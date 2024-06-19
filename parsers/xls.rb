require "roo"


class XLS

    def XLSParser path

        sheet = Roo::Spreadsheet.open(path)
        headers = sheet.row(1)

        arr = Array.new

        sheet.each_with_index do |row, idx|
            next if idx == 0
            data = Hash[[headers, row].transpose]
            
            data_Hash = {
                name: data['Cliente'],
                phone: data['Telefone'],
                email: data['Email']
            }

            arr << data_Hash
        
        end

        return arr
    end
end