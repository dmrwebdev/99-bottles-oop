gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    99.downto(3) do |num|
    expected = 
    "#{num} bottles of beer on the wall, " + 
    "#{num} bottles of beer.\n" +
    "Take one down and pass it around, " + 
    "#{num - 1} bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(num)
    end
  end

  def test_verse_2
    expected = 
    "2 bottles of beer on the wall, " + 
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " + 
    "1 bottle of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(2)
  end

  def test_verse_1
    expected =
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " + 
      "no more bottles of beer on the wall.\n"
      assert_equal expected, Bottles.new.verse(1)
  end

    def test_verse_0
    expected =
      "No more bottles of beer on the wall, " + 
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " + 
      "99 bottles of beer on the wall.\n"
      assert_equal expected, Bottles.new.verse(0)
  end

  def test_a_couple_verses
  expected = 
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "1 bottle of beer on the wall.\n" +
    "\n" +
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
     "Take it down and pass it around, " +
     "no more bottles of beer on the wall.\n" +
     "\n" +
     "No more bottles of beer on the wall, " +
     "no more bottles of beer.\n" +
     "Go to the store and buy some more, " +
     "99 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verses(2, 0)
  end
end