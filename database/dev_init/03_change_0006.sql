-- Allow a transaction (e.g. a refund or reimbursement) to reference the original transaction it relates to.
ALTER TABLE transactions
  ADD COLUMN linked_transaction_id UUID REFERENCES transactions(id) ON DELETE SET NULL;

CREATE INDEX idx_transactions_linked_transaction_id ON transactions(linked_transaction_id);

INSERT INTO schema_changes (version_number, script_name) VALUES (6, '03_change_0006.sql');
