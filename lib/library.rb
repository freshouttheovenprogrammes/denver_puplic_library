require './lib/book'
require './lib/author'

class Library

  attr_reader :first_name, :last_name, :author, :title, :book
  attr_accessor :books

  def initialize(author = {})
    @author = author[:author]
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @title = title
    @books = books
  end

  def add_to_collection(book)
    @books << Book.new({:author => author,
                          :author_first_name => first_name,
                          :author_last_name => last_name,
                          :title => title,
                          :publication_date => publication_date})
  end

end
