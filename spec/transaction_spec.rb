# frozen_string_literal: true

require 'transaction'
require 'timecop'

RSpec.describe Transaction do
  let(:value) { 4 }

  subject(:transaction) { described_class.new(value, type) }

  describe '#deposit' do
    let(:type) { :credit }

    it 'returns a postive value' do
      expect(transaction.credit).to eq value
    end
  end

  describe '#debit' do
    let(:type) { :debit }

    it 'returns a negative value' do
      expect(transaction.debit).to eq(-value)
    end
  end

  describe '#date' do
    let(:type) { :debit }

    it 'returns a formatted date of the transaction' do
      time = Time.new
      Timecop.freeze(time)
      expect(transaction.date).to eq time.strftime(described_class::DATE_FORMAT)
    end
  end
end
