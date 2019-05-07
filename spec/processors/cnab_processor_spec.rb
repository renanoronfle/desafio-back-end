require 'rails_helper'

RSpec.describe CnabProcessor do
  before do
    @cnab = Cnab.new(name: 'test')
    @cnab.save
    @file_path = "#{Rails.root}/spec/support/cnab_file.txt"
    @result_file = CnabParser.parse(@file_path)
  end

  context '.create_purchases' do
    it 'should create purchases' do
      described_class.create_purchases(@result_file, @cnab)
      expect(Purchase.count).to eq(2)
    end
  end
end
