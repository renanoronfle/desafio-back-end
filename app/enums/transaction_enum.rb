class TransactionEnum
  DETAILS = {
      '1' => { description: 'Débito Entrada', action: 'sum' },
      '2' => { description: 'Boleto Saída', action: 'discount' },
      '3' => { description: 'Financiamento Saída', action: 'discount'},
      '4' => { description: 'Crédito Entrada', action: 'sum' },
      '5' => { description: 'Recebimento Empréstimo  Entrada', action: 'sum' },
      '6' => { description: 'Vendas Entrada', action: 'sum' },
      '7' => { description: 'Recebimento TED Entrada', action: 'sum' },
      '8' => { description: 'Recebimento DOC Entrada', action: 'sum' },
      '9' => { description: 'Aluguel Saída', action: 'discount' }
    }

  def self.get_value(value)
    DETAILS.fetch(value)
  end
end
