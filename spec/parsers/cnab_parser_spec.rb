require 'rails_helper'

RSpec.describe CnabParser do

  before do
    @file_path = "#{Rails.root}/spec/support/cnab_file.txt"
    @parsed_result = [
      {
        :transaction_type=>"3",
        :transaction_at=>Date.parse("20190301"),
        :transaction_description=>"Financiamento Saída",
        :amount=>142.0,
        :cpf=>"09620676017",
        :card_number=>"4753****3153",
        :transaction_hour=>"153453",
        :store_owner=>"JOÃO MACEDO   ",
        :transaction_action=>"discount",
        :store_name=>"BAR DO JOÃO"
      },
      {
        :transaction_type=>"5",
        :transaction_at=>Date.parse("20190301"),
        :transaction_description=>"Recebimento Empréstimo  Entrada",
        :amount=>132.0,
        :cpf=>"55641815063",
        :card_number=>"3123****7687",
        :transaction_hour=>"145607",
        :store_owner=>"MARIA JOSEFINA",
        :transaction_action=>"sum",
        :store_name=>"LOJA DO Ó - MATRIZ"
      }
    ]
  end

  context '.parse' do
    it 'should return hash with file information' do
     expect(described_class.parse(@file_path)).to eq(@parsed_result)
    end
  end

end

