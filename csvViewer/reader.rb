require 'csv'
module CSVFILE

def self.myfiles()
csvf=Dir.glob("./data/*.csv")
csvf
end

end
