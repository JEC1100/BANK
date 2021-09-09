# frozen_string_literal: true

require_relative 'formats/date'

class Transaction
  include Formats::Date

  def initialize(value, type)
    @value = value
    @type = type
    @date = Time.now
  end

  def credit
    value if credit?
  end

  def debit
    -value if debit?
  end

  def date
    p formatted(@date)
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
