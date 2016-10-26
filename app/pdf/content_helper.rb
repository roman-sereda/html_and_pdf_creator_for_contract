
def regular some_text
  font get_font[:regular]
  text some_text
  move_down 10
end

def bold some_text
  font get_font[:bold]
  text some_text, :size => 14
  move_down 10
end

def header some_text
  font get_font[:bold]
  text some_text, :align => :center, :size => 18
  move_down 10
end

def center some_text
  font get_font[:regular]
  text some_text, :align => :center
  move_down 30
end

def right some_text
  font get_font[:regular]
  text some_text, :align => :right
  move_down 10
end

def get_font
  {:bold => "#{File.dirname(__FILE__)}/../../media/fonts/TimesNewRomanBold.ttf",
  :italic => "#{File.dirname(__FILE__)}/../../media/fonts/TimesNewRomanItalic.ttf",
  :regular => "#{File.dirname(__FILE__)}/../../media/fonts/TimesNewRomanRegular.ttf"}
end
