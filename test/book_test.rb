require './test/test_helper'
require './lib/book'


class BookTest < Minitest::Test

  def test_that_we_can_register_books
    mockingbird = Book.new({author_first_name: "Harper",
      author_last_name: "Lee",
      title: "To Kill a Mockingbird",
      publication_date: "July 11, 1960"})

      assert_equal "Harper", mockingbird.author_first_name
      assert_equal "Lee", mockingbird.author_last_name
      assert_equal "To Kill a Mockingbird", mockingbird.title
      assert_equal "July 11, 1960", mockingbird.publication_date
  end

end
