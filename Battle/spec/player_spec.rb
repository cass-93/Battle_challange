require "./lib/player.rb"

describe Player do
  cj = Player.new("CJ", 60)

  it "should create a new instance of itself" do
    expect(cj).to be_instance_of Player
  end

  describe "#reduce_hp" do
    it "should respond to reduce_hp method" do
      expect(cj).to respond_to :reduce_hp
    end

    it "should take the hp value and return 10 less" do
      expect(cj.reduce_hp).to eq 50
    end
  end
end
