class Purchase < ApplicationRecord
  belongs_to :cnab
  validates :transaction_type, :transaction_description, :transaction_action,
            :transaction_at, :amount, :cpf, :card_number, :transaction_hour,
            :store_owner, :store_name, presence: true

  def discount?
    transaction_action == 'discount'
  end

  def credit?
    transaction_action == 'sum'
  end
end
