require './caeser_cipher'

describe "#caeser_cipher" do 
  it "loops around the alphabet if shift number is greater than 26" do
    expect(caesar_cipher("a", 26)).to eql("a") 
  end

  it "makes the shift when no wrapping is required" do 
    expect(caesar_cipher("Hey", 1)).to eql("Ifz")
  end

  it "wraps from z to a when an alphabet shifts beyond z" do 
    expect(caesar_cipher("Hey", 2)).to eql("Jga")
  end

  it "retains the case of alphabet" do
    expect(caesar_cipher("Yay", 2)).to eql("Aca")
  end

  it "it shifts only alphabets" do 
    expect(caesar_cipher("Hey! !", 2)).to eql("Jga! !")
  end 
end 