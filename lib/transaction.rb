# frozen_string_literal: true

class Transaction
  def initialize(value, type)
    @value = value
    @type = type
  end

  def credit
    value if credit?
  end

  def debit
    -value if debit?
  end

  private

  attr_reader :value, :type

  def credit?
    type == :credit
  end

  def debit?
    type == :debit
  end
end
