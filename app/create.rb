require_relative "html/create_html"
require_relative "pdf/create_pdf"

def create
  p "Press 1 to create html"
  p "Press 2 to create pdf"

  choice = gets
  choice = choice.chop

  if(choice == "1")
    p "asdas"
    create_html("contract.html", "contract.css")
  elsif(choice == "2")
    create_pdf("contract.pdf")
  end
end

create
