require "./lib/tracker"

RSpec.describe "Tracker" do

  it "can get avengers from transmission file" do
    tracker = Tracker.new
    first_avenger = tracker.avengers[0]

    expect(first_avenger.name).to eq('Iron Man')
    expect(first_avenger.status).to eq('Alive')
    expect(first_avenger.location).to eq('Titan')

    expect(tracker.avengers.count).to eq(26)
  end

  it "can get all alive avengers" do
    tracker = Tracker.new
    alive_avengers = tracker.get_alive_avengers()

    expect(alive_avengers.count).to eq(11)
  end

  it "can get all missing avengers" do
    tracker = Tracker.new
    missing_avengers = tracker.get_missing_avengers()

    expect(missing_avengers.count).to eq(13)
  end

  it "can get all dead avengers" do
    tracker = Tracker.new
    dead_avengers = tracker.get_dead_avengers()

    expect(dead_avengers.count).to eq(2)
  end

  it "can get avengers sorted by location" do
    tracker = Tracker.new

    avengers_by_location = tracker.get_avengers_by_location()

    locations = avengers_by_location.keys
    expect(locations.count).to eq(6)
    expect(locations.sort).to eq(["Atlanta", "San Francisco", "Titan", "Unknown", "Vormir", "Wakanda"])
    expect(avengers_by_location['Atlanta'].count).to eq(2)
    expect(avengers_by_location['San Francisco'].count).to eq(1)
    expect(avengers_by_location['Titan'].count).to eq(7)
    expect(avengers_by_location['Unknown'].count).to eq(2)
    expect(avengers_by_location['Vormir'].count).to eq(1)
    expect(avengers_by_location['Wakanda'].count).to eq(13)
    expect(avengers_by_location['Vormir'].include?('Gamora')).to be(true)
  end

  it "can get avengers by a specified location" do
    tracker = Tracker.new

    avengers_by_location = tracker.get_avengers_by_location('Wakanda')

    expect(avengers_by_location.count).to eq(13)
    expect(avengers_by_location.include?('Thor')).to be(true)
  end

  it "can get an avengers location from their name" do
    tracker = Tracker.new

    location = tracker.find_avenger('Iron Man')

    expect(location).to eq('Titan')

  end



end
