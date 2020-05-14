require "./lib/game.rb"


describe Game do 
  let(:cj) { double :Player, reduce_hp: 50}

  it "should create a new instance of itself" do
    expect(subject).to be_instance_of Game
  end

  describe "#attack" do
    it "should respond to an attack method" do
      expect(subject).to respond_to :attack
    end

    it "should call the reduce_hp method and return hp" do
      expect(subject.attack(cj)).to eq 50
    end
  end
end