class CnabJob < ApplicationJob
  queue_as :default

  def perform(cnab_id)
    CnabProcessor.execute(cnab_id)
  end
end
