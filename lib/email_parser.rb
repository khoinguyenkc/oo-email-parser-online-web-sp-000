# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :csvstring

def initialize(crvstring)
  @csvstring = csvstring
end

def parse
  splittedarray = @csvstring.split(/[\s,]/) #regex: split by space or comma
  #splittedarray will contains pieces like ""
  splittedarray.delete("") #delete all items that match, return the deleted items
  splittedarray
end



end

stuff = EmailAddressParser.new("romeo@yahoo.com, rihanan@gmail.com chrisbrown@aol.com")
result = stuff.parse