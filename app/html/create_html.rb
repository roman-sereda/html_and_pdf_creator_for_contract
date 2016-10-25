require_relative "form"
require_relative "style"

def create_html(name, cssname)
read_file
create_and_write_files(name, cssname)

end

def read_file
  @data = {}
  num = [:town, :time, :buyer_name, :seller_name, :enterprise_name]

  File.open("././create.txt") do |f|
    f.each_with_index do |line, i|
      @data[num[i]] = line
      i+=1
    end
  end
end

def create_and_write_files(name, cssname)
  File.open("././"+name, "w") {|f|
    f.write(get_form_html)
  }
  File.open("././"+cssname, "w") {|f|
    f.write(get_form_css)
  }
end
