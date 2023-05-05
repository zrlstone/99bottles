require_relative "../bottles"

RSpec.describe BottleVerse do
  describe ".verse" do
    it "returns the first verse" do
      expected = "99 bottles of beer on the wall, " +
                 "99 bottles of beer.\n" +
                 "Take one down and pass it around, " +
                 "98 bottles of beer on the wall.\n"
      expect(BottleVerse.lyrics(99)).to eq(expected)
    end
  end
end