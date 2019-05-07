class CnabProcessor
  class << self

    def execute(cnab_id)
      cnab = Cnab.find(cnab_id)
      path = file_path(cnab.file)
      parsed_file = CnabParser.parse(path)
      create_purchases(parsed_file, cnab)
    end

    def create_purchases(parsed_file, cnab)
      parsed_file.each do |line|
        begin
          purchase = Purchase.new(line)
          purchase.cnab = cnab
          purchase.save
        rescue StandardError => e
          puts e
        end
      end
    end

    private

    def file_path(file)
      Rails.root + file.blob.filename.to_s
    end
  end
end
