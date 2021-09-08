require 'transaction'

RSpec.describe Transaction do
  let(:value) { 4 }
  
  subject(:transaction) { described_class.new(value, type) }

  describe '#credit' do
    let(:type) { :credit }
  end
  
end
