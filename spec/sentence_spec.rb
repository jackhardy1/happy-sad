require 'sentence'

describe Sentence do

  context 'calculates happy or sad' do
    it 'is happy if sentence has 50% more happy words in it' do
      sentence = "I was delighted to make a miserable day into a joyful one"
      new_sentence = Sentence.new sentence
      expect(new_sentence.result).to eq 'Happy'
    end

    it 'is sad if sentence has 50% more sad words in it' do
      sentence = "I was Sad. To make a Miserable day into a joyful one. A very unhappy day"
      new_sentence = Sentence.new sentence
      expect(new_sentence.result).to eq 'Sad'
    end

    it 'if equal amount of happy / sad words, then result is unknown' do
      sentence = "there is only one happy and one sad word in this sentence"
      new_sentence = Sentence.new sentence
      expect(new_sentence.result).to eq 'Unknown'
    end

    it 'repeated words still count' do
      sentence = "I was glad to go to the beach. Very glad. Even though was a miserable day."
      new_sentence = Sentence.new sentence
      expect(new_sentence.result).to eq 'Happy'
    end
  end
end
