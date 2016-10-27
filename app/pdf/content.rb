require_relative "content_helper"
require_relative "../document_text.rb"

def content
  header("ДОГОВІР")
  center('купівлі-продажу')

  text_box "#{$data[:town].chop}", :kerning => true, :at => [0, y - 40]
  text_box "#{$data[:time].chop}", :kerning => true, :at => [450, y - 40]

  regular("#{$data[:enterprise_name].chop} (найменування підприємства, кооперативу, організації), іменоване надалі  \"Продавець\" в особі #{$data[:seller_name].chop} (посада, П.І.П.), іменоване надалі  \"Покупець\" в особі #{$data[:buyer_name].chop} (посада, П.І.П.), уклали даний Договір про наступне:")

  titles.each do |title, items|
    bold(title)

    items.each do |item|
      regular(item)
    end
  end


  text_box "Продавець\n___________________\n\nМ. П.", :kerning => true, :at => [0, y - 70]
  text_box "Продавець\n___________________\n\nМ. П.", :kerning => true, :at => [400, y - 70]


end
