class Scraper

    def self.search(arg1, arg2)
        uri = URI("https://www.google.com/search?tbm=isch&q=#{arg1}+#{arg2}")
        html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
        return html_doc.css("a > img")["#{rand(0..3)}".to_i].attr('src')
    end

    def self.post(arg1)
        uri = URI("https://www.google.com/search?tbm=isch&q=#{arg1}")
        html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
        return html_doc.css("a > img")["#{rand(0..3)}".to_i].attr('src')
    end

end