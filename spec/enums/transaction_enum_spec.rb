require 'rails_helper'

RSpec.describe TransactionEnum do

  context 'details values' do
    it 'should return all details keys' do
      expect(TransactionEnum::DETAILS.keys).to eq(["1", "2", "3", "4", "5", "6", "7", "8", "9"])
    end
  end

  context '.get_value' do
    it 'should return key 1 detail' do
      detail = TransactionEnum.get_value('1')
      expect(detail).to eq({:description=>"Débito Entrada", :action=>"sum"})
    end

    it 'should return key 2 detail' do
      detail = TransactionEnum.get_value('2')
      expect(detail).to eq({:description=>"Boleto Saída", :action=>"discount"})
    end

    it 'should return key 3 detail' do
      detail = TransactionEnum.get_value('3')
      expect(detail).to eq({:description=>"Financiamento Saída", :action=>"discount"})
    end

    it 'should return key 4 detail' do
      detail = TransactionEnum.get_value('4')
      expect(detail).to eq({:description=>"Crédito Entrada", :action=>"sum"})
    end

    it 'should return key 5 detail' do
      detail = TransactionEnum.get_value('5')
      expect(detail).to eq({:description=>"Recebimento Empréstimo  Entrada", :action=>"sum"})
    end

    it 'should return key 6 detail' do
      detail = TransactionEnum.get_value('6')
      expect(detail).to eq({:description=>"Vendas Entrada", :action=>"sum"})
    end

    it 'should return key 7 detail' do
      detail = TransactionEnum.get_value('7')
      expect(detail).to eq({:description=>"Recebimento TED Entrada", :action=>"sum"})
    end

    it 'should return key 8 detail' do
      detail = TransactionEnum.get_value('8')
      expect(detail).to eq({:description=>"Recebimento DOC Entrada", :action=>"sum"})
    end

    it 'should return key 9 detail' do
      detail = TransactionEnum.get_value('9')
      expect(detail).to eq({:description=>"Aluguel Saída", :action=>"discount"})
    end
  end
end

