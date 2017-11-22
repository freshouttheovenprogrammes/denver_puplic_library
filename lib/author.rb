class Author
  attr_reader :books, :first_name, :last_name

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []

  end

  def write_book(title, publication_date)
    @books << Book.new({author_first_name: @first_name,
                            author_last_name: @last_name,
                            title: title,
                            publication_date: publication_date})
  end

end
