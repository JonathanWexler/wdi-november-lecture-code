require_relative 'wobble'

describe Wobble do 
    let(:legged_wobble){Wobble.new(legs: 5)}
    let(:no_legged_wobble){Wobble.new(legs: 0)}
    let(:no_legged_named_wobble){Wobble.new(legs: 0, name: "jobble")}
# let(:legged_no_named_wobble){Wobble.new(legs: 0)}

    it "#no_legs? for a wobble with legs" do 
        expect(legged_wobble.no_legs?).to be_falsey
    end

    it "#no_legs? for a wobble with no legs" do 
        expect(no_legged_wobble.no_legs?).to be(true)
    end

    it "#has_name? for a wobble with no legs and a name" do 
        expect(no_legged_named_wobble.has_name?).to be(true)
    end
    it "#has_name? for a wobble with legs and no name" do 
        expect(no_legged_wobble.has_name?).to be_falsey
    end
end