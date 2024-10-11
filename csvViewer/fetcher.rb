require('./file_manager.rb')
require 'console_table'
require 'csv'

module FETCH


def self.fetchFileByName(n)
file_path=File.join("./data",n)
return CSV.read(file_path,headers:true)
end
  
def self.fetchTable(f)
headers=FILEMANAGER.filecontentHeaders(f)

layout=headers.map do |header|
{key:header.to_sym, title:header, size:"*" }
end

ConsoleTable.define(layout) do |table|
f.each do |row|
rowData=row.to_h.transform_keys {|key| key.to_sym}
table<<rowData
end
end

end

end
