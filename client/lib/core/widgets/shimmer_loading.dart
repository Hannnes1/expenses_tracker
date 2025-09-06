import 'package:flutter/widgets.dart';

/// A widget that provides shimmer effect to its child.
class Shimmer extends StatefulWidget {
  static ShimmerState? of(BuildContext context) {
    return context.findAncestorStateOfType<ShimmerState>();
  }

  const Shimmer({
    super.key,
    required this.linearGradient,
    required this.child,
  });

  final LinearGradient linearGradient;
  final Widget child;

  @override
  ShimmerState createState() => ShimmerState();
}

class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Gradient get gradient => LinearGradient(
        colors: widget.linearGradient.colors,
        stops: widget.linearGradient.stops,
        begin: widget.linearGradient.begin,
        end: widget.linearGradient.end,
        transform: _SlidingGradientTransform(
          slidePercent: _animationController.value,
        ),
      );

  Listenable get shimmerChanges => _animationController;

  bool get isSized => (context.findRenderObject() as RenderBox?)?.hasSize ?? false;

  Size get size => (context.findRenderObject() as RenderBox).size;

  Offset getDescendantOffset({
    required RenderBox descendant,
    Offset offset = Offset.zero,
  }) {
    final shimmerBox = context.findRenderObject() as RenderBox;
    return descendant.localToGlobal(offset, ancestor: shimmerBox);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}

/// A widget that wraps its child with a [ShaderMask] that applies a
/// [LinearGradient] to create a shimmer effect.
///
/// This requires that the widget as a [Shimmer] ancestor that is placed above
/// all the visible widgets that use [ShimmerLoading] at the same time, to
/// ensure that the gradient looks the same across all the widgets.
class ShimmerLoading extends StatefulWidget {
  const ShimmerLoading({
    super.key,
    this.isLoading = true,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  late final Listenable? _shimmerChanges;

  late final ShimmerState? _shimmer;
  Offset _offsetWithinShimmer = Offset.zero;

  @override
  void initState() {
    super.initState();

    _shimmerChanges = Shimmer.of(context)?.shimmerChanges;
    _shimmerChanges?.addListener(_onShimmerChange);

    _shimmer = Shimmer.of(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_shimmer == null) return;

      // In the codelab (https://docs.flutter.dev/cookbook/effects/shimmer-loading),
      // this is done in the build method. However, this is will not work, as
      // the docs for `findRenderObject` says.
      _offsetWithinShimmer = _shimmer.getDescendantOffset(
        descendant: context.findRenderObject() as RenderBox,
      );
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _shimmerChanges?.removeListener(_onShimmerChange);
    super.dispose();
  }

  void _onShimmerChange() {
    if (widget.isLoading) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isLoading) {
      return widget.child;
    }

    // Collect ancestor shimmer information.
    if (!(_shimmer?.isSized ?? false)) {
      // The ancestor Shimmer widget isn’t laid
      // out yet. Return an empty box.
      return const SizedBox();
    }
    final shimmerSize = _shimmer!.size;
    final gradient = _shimmer.gradient;

    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(
            -_offsetWithinShimmer.dx,
            -_offsetWithinShimmer.dy,
            shimmerSize.width,
            shimmerSize.height,
          ),
        );
      },
      child: widget.child,
    );
  }
}

/// A soilid black widget intented to be shown below a `ShimmerLoading` widget.
class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({
    super.key,
    this.shape = BoxShape.rectangle,
    this.radius = 4,
    this.height,
    this.width,
    this.margin,
  });

  final BoxShape shape;
  final double radius;
  final double? height;
  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: const Color(0xFF000000),
        shape: shape,
        borderRadius: shape == BoxShape.rectangle ? BorderRadius.circular(radius) : null,
      ),
    );
  }
}
