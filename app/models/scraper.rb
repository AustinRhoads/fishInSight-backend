require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper < ApplicationRecord
    
    ROOT_URL = "https://en.wikipedia.org"
    REMOVED_URL = "https://en.wikipedia.org/wiki/"

   

    def get_specs
      #  binding.pry
        doc = Nokogiri::HTML(URI.open("https://en.wikipedia.org/wiki/List_of_fish_common_names"))
        ary = []
        url_ary = []
        all_docs = []
        specs = []
      

        doc.css('.div-col').css('a').each do |x|
            ary.push(x.values[0])
        end

        ary.each do |y|
            temp_url = ROOT_URL + y
            url_ary.push(temp_url)
        end

        url_ary.each do |z|
#
         
         temp_doc = Nokogiri::HTML(URI.open(z))

         new_spec = {

             :name => z.sub(REMOVED_URL, "").split("_").join(" "),
             :scientific_name => temp_doc.css('.binomial').text,
             :description => temp_doc.css('p').text


         }

         specs.push(new_spec)

        end
        #binding.pry
       specs
    end

end
