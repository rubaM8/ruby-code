require('./reader.rb')
module FILEMANAGER

def self.allcsvfilesURL()
fileNames=CSVFILE.myfiles
fileNames
end

def self.filenames()
fileNames=CSVFILE.myfiles.map {|x| (File.basename(x))}
fileNames
end

def self.filecontentRows(f)
content=f.map(&:to_h)
content
end

def self.filecontentHeaders(f)
content=f.headers
content
end

end
