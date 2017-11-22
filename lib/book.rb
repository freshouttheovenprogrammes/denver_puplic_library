class Book

  attr_reader :author_last_name, :author_first_name, :title, :publication_date,
              :author, :book

  attr_accessor :book

  def initialize(book = {})
    @author = book[:author]
    @author_first_name = book[:author_first_name]
    @author_last_name = book[:author_last_name]
    @title = book[:title]
    @publication_date = book[:publication_date]

  end

end
