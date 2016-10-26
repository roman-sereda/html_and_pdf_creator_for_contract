require_relative "../lib/create_html.rb"
require_relative "../lib/create_pdf.rb"

def create
  p "Press 1 to create html"
  p "Press 2 to create pdf"

  choice = gets
  choice = choice.chop

  read_settings_file

  make_file choice
end

def read_settings_file
  $data = {}
  num = [:town, :time, :buyer_name, :seller_name, :enterprise_name]
  File.open("#{File.dirname(__FILE__)}/../create.txt") do |f|
    f.each_with_index do |line, count|
      $data[num[count]] = line
      count+=1
    end
  end
end

def make_file choice
  if(choice == "1")
    include CreateHtmlFile
    new_file = Html.new()
    new_file.create_html
  elsif(choice == "2")
    include CreatePdfFile
    new_file = Pdf.new()
    new_file.create_pdf
  end
end


 create
