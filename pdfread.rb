require 'selenium-webdriver'
require 'pdf/reader'
require 'open-uri'
require 'test/unit'

    io     = open('http://www.africau.edu/images/default/sample.pdf')
    reader = PDF::Reader.new(io)
    puts reader.pdf_version
    puts reader.info
    puts reader.metadata
    puts reader.page_count
    strfile =''
    reader.pages.each do |page|

      strfile = strfile + page.text
    end
   puts strfile

