require_relative "../bottles"
require_relative "full_song"

RSpec.describe Bottles do
  describe "#verse" do
    it "returns the first verse" do
      expected = "99 bottles of beer on the wall, " +
                 "99 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "98 bottles of beer on the wall.\n"
      expect(Bottles.new.verse(99)).to eq(expected)
    end

    it "returns another verse" do
      expected = "3 bottles of beer on the wall, " +
                 "3 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "2 bottles of beer on the wall.\n"
      expect(Bottles.new.verse(3)).to eq(expected)
    end

    it "returns the verse for 2 bottles" do
      expected = "2 bottles of beer on the wall, " +
                 "2 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "1 bottle of beer on the wall.\n"
      expect(Bottles.new.verse(2)).to eq(expected)
    end

    it "returns the verse for 1 bottle" do
      expected = "1 bottle of beer on the wall, " +
                 "1 bottle of beer.\n" +
                 "Take it down and pass it around, " +
                 "no more bottles of beer on the wall.\n"
      expect(Bottles.new.verse(1)).to eq(expected)
    end

    it "returns the last verse" do
      expected = "No more bottles of beer on the wall, " +
                 "no more bottles of beer.\n" +
                 "Go to the store and buy some more, " +
                 "99 bottles of beer on the wall.\n"
      expect(Bottles.new.verse(0)).to eq(expected)
    end
  end

  describe "#verses" do
    it "returns two verses" do
      expected = "99 bottles of beer on the wall, " +
                 "99 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "98 bottles of beer on the wall.\n" +
                 "\n" +
                 "98 bottles of beer on the wall, " +
                 "98 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "97 bottles of beer on the wall.\n"
      expect(Bottles.new.verses(99, 98)).to eq(expected)
    end

    it "returns multiple verses" do
      expected = "2 bottles of beer on the wall, " +
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
      expect(Bottles.new.verses(2, 0)).to eq(expected)
    end
  end

  describe "#song" do
    it "returns the entire song" do
      expect(Bottles.new.song).to eq(full_song)
    end
  end
end