require "json"

class Json
    def jsonParse path
        file = File.read('./contacts.json')
        data_contacts = JSON.parse(file)
    end
end


