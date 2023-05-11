require_relative "../countdown_song"
require_relative "full_song"

RSpec.describe CountdownSong do
  describe "#verses" do
    it "returns two verses" do
      expected = "This is verse 99.\n" +
                 "\n" +
                 "This is verse 98.\n" +
                 "\n" +
                 "This is verse 97.\n"
      expect(CountdownSong.new(verse_template: VerseFake).verses(99, 97)).to eq(expected)
    end
  end

  describe "#song" do
    it "returns the entire song" do
      expected = 
        "This is verse 47.\n" +
        "\n" +
        "This is verse 46.\n" +
        "\n" +
        "This is verse 45.\n" +
        "\n" +
        "This is verse 44.\n" +
        "\n" +
        "This is verse 43.\n"
      expect(CountdownSong.new(verse_template: VerseFake, max: 47, min: 43).song).to eq(expected)
    end
  end

  describe "#verse" do
    it "returns a single verse" do
      expect(CountdownSong.new(verse_template: VerseFake).verse(500)).to eq("This is verse 500.\n")
    end
  end
end

class VerseFake
  def self.lyrics(number)
    "This is verse #{number}.\n"
  end
end

RSpec.describe BottleVerse do
  describe ".verse" do
    context 'general rule upper bound' do
      it "returns the first verse" do
        expected = "99 bottles of beer on the wall, " +
                   "99 bottles of beer.\n" +
                   "Take one down and pass it around, " +
                   "98 bottles of beer on the wall.\n"
        expect(BottleVerse.lyrics(99)).to eq(expected)
      end
    end

    context 'general rule lower bound' do
      it "returns another verse" do
        expected = "3 bottles of beer on the wall, " +
                   "3 bottles of beer.\n" +
                   "Take one down and pass it around, " +
                   "2 bottles of beer on the wall.\n"
        expect(BottleVerse.lyrics(3)).to eq(expected)
      end
    end

    context 'verse 7' do
      it 'returns the specialized verse' do
        expected = "7 bottles of beer on the wall, " +
                   "7 bottles of beer.\n" +
                   "Take one down and pass it around, " +
                   "1 six-pack of beer on the wall.\n"
        expect(BottleVerse.lyrics(7)).to eq(expected)
      end
    end

    context 'verse 6' do
      it 'returns the specialized verse' do
        expected = "1 six-pack of beer on the wall, " +
                   "1 six-pack of beer.\n" +
                   "Take one down and pass it around, " +
                   "5 bottles of beer on the wall.\n"
        expect(BottleVerse.lyrics(6)).to eq(expected)
      end
    end

    it "returns the verse for 2 bottles" do
      expected = "2 bottles of beer on the wall, " +
                 "2 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "1 bottle of beer on the wall.\n"
      expect(BottleVerse.lyrics(2)).to eq(expected)
    end

    it "returns the verse for 1 bottle" do
      expected = "1 bottle of beer on the wall, " +
                 "1 bottle of beer.\n" +
                 "Take it down and pass it around, " +
                 "no more bottles of beer on the wall.\n"
      expect(BottleVerse.lyrics(1)).to eq(expected)
    end

    it "returns the last verse" do
      expected = "No more bottles of beer on the wall, " +
                 "no more bottles of beer.\n" +
                 "Go to the store and buy some more, " +
                 "99 bottles of beer on the wall.\n"
      expect(BottleVerse.lyrics(0)).to eq(expected)
    end
  end
end

RSpec.describe BottleNumber do
  describe '.for' do
    it 'returns the correct class for given number' do
      expect(BottleNumber.for(0)).to be_a(BottleNumber0)
      expect(BottleNumber.for(1)).to be_a(BottleNumber1)
      expect(BottleNumber.for(6)).to be_a(BottleNumber6)

      expect(BottleNumber.for(7)).to be_a(BottleNumber)
      expect(BottleNumber.for(45)).to be_a(BottleNumber)
    end
  end
end