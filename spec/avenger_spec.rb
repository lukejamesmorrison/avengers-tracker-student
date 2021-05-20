require "./lib/avenger"

RSpec.describe "Avenger" do

  it "has a name" do
    avenger = Avenger.new(name:'Iron Man', status:'Alive', location:'Titan')
    expect(avenger.name).to eq('Iron Man')
  end

  it "has a status" do
    avenger = Avenger.new(name:'Iron Man', status:'Alive', location:'Titan')
    expect(avenger.status).to eq('Alive')
  end

  it "has a location" do
    avenger = Avenger.new(name:'Iron Man', status:'Alive', location:'Titan')
    expect(avenger.location).to eq('Titan')
  end

end
