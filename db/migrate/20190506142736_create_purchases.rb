class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :transaction_type
      t.string :transaction_description
      t.string :transaction_action
      t.date :transaction_at
      t.decimal :amount
      t.string :cpf
      t.string :card_number
      t.string :transaction_hour
      t.string :store_owner
      t.string :store_name
      t.references :cnab, index: true


      t.timestamps
    end
    add_index :purchases, :transaction_type
    add_index :purchases, :transaction_at
    add_index :purchases, :cpf
  end
end
