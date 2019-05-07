class CnabParser

  TYPE = (0)
  DATE = (1...9)
  AMOUNT = (9...19)
  CPF = (19...30)
  CARD_NUMBER = (30...42)
  HOUR = (42...48)
  STORE_OWNER = (48...62)
  STORE_NAME = (62...81)

  def self.parse(file_path)
    result = []
    File.readlines(file_path).each do |line|
      begin
        result << parse_row(line.strip)
      rescue StandardError => error
        puts error
      end
    end
    result
  end

  private

  def self.parse_row(line)
    transaction_detail = TransactionEnum.get_value(line[TYPE])
    {
      transaction_type: line[TYPE],
      transaction_description: transaction_detail[:description],
      transaction_action: transaction_detail[:action],
      transaction_at: Date.parse(line[DATE]),
      amount: (line[AMOUNT].to_f / 100),
      cpf: line[CPF],
      card_number: line[CARD_NUMBER],
      transaction_hour: line[HOUR],
      store_owner: line[STORE_OWNER],
      store_name: line[STORE_NAME]
    }
  end
end
