module PurchasesHelper

  def total_discount(purchases)
    purchases.select{ |purchase| purchase.discount? }.sum(&:amount).to_f

  end

  def total_credit(purchases)
    purchases.select{ |purchase| purchase.credit? }.sum(&:amount).to_f
  end
end
