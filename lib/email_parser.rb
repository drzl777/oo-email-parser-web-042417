# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_string, :email_array
  def initialize(email_string)
    self.email_string = email_string
  end

  def parse
    email_split_by_csv = self.email_string.split(', ')
    email_split_by_csv_and_space = email_split_by_csv.collect {|email_by_csv| email_by_csv.split}
    self.email_array = email_split_by_csv_and_space.flatten.uniq
  end
end
