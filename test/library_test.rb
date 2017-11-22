require './test/test_helper'
require './lib/library'
require './lib/author'

class LibraryTest < Minitest::Test

  def test_we_add_books_to_library
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.write_book("Villette", "1853")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write_book("To Kill a Mockingbird", "July 11, 1960")

    dpl = Library.new

    assert_equal [], dpl.books

    binding.pry
    dpl.add_to_collection(jane_eyre)
    assert_equal 1, dpl.books.length
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)
    dpl.books
  end


end
