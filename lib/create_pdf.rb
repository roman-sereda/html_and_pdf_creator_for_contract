require "prawn"
require_relative "../app/pdf/content"

module CreatePdfFile
  class Pdf
    def create_pdf
      Prawn::Document.generate("#{File.dirname(__FILE__)}/../contract.pdf", :page_size => 'A4', :margin => [36,36,60,36]) do
        content
      end
    end
  end
end
