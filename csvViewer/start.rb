require('tty-prompt')
require('./file_manager.rb')
require('./fetcher.rb')

prompt=TTY::Prompt.new
names=FILEMANAGER.filenames
names.push("quit")

loop do
value= prompt.select("choose one of these CSV files?", names)
break if value=="quit" 
f=FETCH.fetchFileByName(value)
table=FETCH.fetchTable(f)
end


