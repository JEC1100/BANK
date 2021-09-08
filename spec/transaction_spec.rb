# frozen_string_literal: true

require 'transaction'

RSpec.describe Transaction do
  let(:value) { 4 }

  subject(:transaction) { described_class.new(value, type) }

  context '#deposit' do
    let(:type) { :credit }

    it 'returns a postive value' do
      expect(transaction.credit).to eq value
    end
  end

end
