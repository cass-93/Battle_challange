require "./lib/game.rb"


describe Game do
  subject(:game) { described_class.new(cj, jerome) }
  let(:cj) { double :Player, name: "CJ", reduce_hp: 50}
  let(:jerome) { double :Player, name: "Jerome", reduce_hp: 50}

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

  describe "#player_1" do
    it "gives us the first player" do
      expect(subject.player_1).to eq cj
    end
  end

  describe "#switch_turns" do
    it "should respond to switch_turns" do
      expect(subject).to respond_to :switch_turns
    end

    it "should return the new players turn" do
      expect(subject.switch_turns).to eq jerome
    end
  end
end
