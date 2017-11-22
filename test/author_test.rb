require './test/test_helper'
require './lib/author'
require './lib/book'
require 'pry'

class AuthorTest < Minitest::Test

  def test_that_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_author_has_no_books_yet
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_author_has_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
  end

  def test_author_now_has_books

    charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})
    charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")

    assert_equal Book, charlotte_bronte.books.first.class
  end

end
