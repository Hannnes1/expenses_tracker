FROM node:18

WORKDIR /usr/emulator

RUN npm install -g firebase-tools

CMD ["firebase", "--project=expenses-tracker-8ef0a", "emulators:start", "--import=data"]
