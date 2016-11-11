require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new("cat")}

	it "checks guess against secret word and returns any correct letters and _ for any letters not guessed" do
		expect(game.guess_feedback(["c", "o", "g"])).to eq ("c _ _")
	end

	it "turns the string guess provided into an array of characters and implements guessing" do
	expect(game.get_guess("cog")).to eq ("c _ _")
	end

end