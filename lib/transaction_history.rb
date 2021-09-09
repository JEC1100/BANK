# frozen_string_literal: true

class TransactionHistory
  attr_reader :transactions

  def initialize(transaction = Transaction)
    @transaction = transaction
    @transactions = []
  end

  def create_transaction(value, type)
    new_transaction = transaction.new(value, type)
    save(new_transaction)
    new_transaction
  end

  private

  attr_reader :transaction

  def save(transaction)
    transactions << transaction
  end
end
