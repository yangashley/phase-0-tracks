require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new("cog")}

	it "checks guess against guess word and returns any correct letters and _ for any letters not guessed" do
		expect(game.guess_feedback(["c", "o", "g"])).to eq (" _ o _ ")
	end

	it "sets the instance variable guess to equal the user guess given outside the class" do
	expect(game.get_guess("moose")).to eq ("moose")
	end

	it "turns the string secret provided into an array of characters" do
	expect(game.get_secret("cog")).to eq (["c", "o", "g"])
	end

end