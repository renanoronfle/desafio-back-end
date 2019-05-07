require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { should validate_presence_of(:transaction_type) }
  it { should validate_presence_of(:transaction_description) }
  it { should validate_presence_of(:transaction_action) }
  it { should validate_presence_of(:transaction_at) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:cpf) }
  it { should validate_presence_of(:card_number) }
  it { should validate_presence_of(:transaction_hour) }
  it { should validate_presence_of(:store_owner) }
  it { should validate_presence_of(:store_name) }
end
