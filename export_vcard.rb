require "vcardigan"
require "json"
require "roo"
require "./parsers/xls.rb"


vcard_file = File.open("contatos_leadfy.vcf", "w")
xls = XLS.new

data_contacts = xls.XLSParser('./tmp/sheet.xlsx')
# puts data_contacts

data_contacts.each do |iten| 
    vcard = VCardigan.create(:version => '4.0')
    vcard.fullname iten[:name]
    vcard.tel iten[:phone]
    vcard.email iten[:email]
    vcard_file.puts vcard
    vcard_file.puts "\n"
end





