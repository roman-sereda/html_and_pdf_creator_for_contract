require 'erb'

module CreateHtmlFile
  class Html

    def create_html
      read_file
      create_html
    end

    def create_html
      create_rendered_file(File.read("#{File.dirname(__FILE__)}/form.html.erb"), "html")
      create_rendered_file(File.read("#{File.dirname(__FILE__)}/style.css"), "css")
    end

    def create_rendered_file (temp_file, expansion)
      rendered = ERB.new(temp_file)
      result = rendered.result()
      File.open("#{File.dirname(__FILE__)}/../../contract."+expansion, "w") {|f|
        f.write(result)
      }
    end
  end
end
