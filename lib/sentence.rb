class Sentence

  HAPPY_WORDS = ["delight", "delighted", "delightful", "happy", "glad", "joy", "joyful", "merry", "pleasant"]
  SAD_WORDS = ["disappointed", "miserable", "sad", "sorrow", "unhappy"]

  def initialize sentence, happy_words = HAPPY_WORDS, sad_words = SAD_WORDS
    @sentence = sentence
    @happy = happy_words
    @sad = sad_words
    @happy_count = 0
    @sad_count = 0
  end

  def self.create words
    @sentence = Sentence.new words
  end

  def self.instance
    @sentence
  end

  def words_array
    @sentence.gsub(",","").gsub(".","").downcase.split(" ")
  end

  def categorize_words
    words_array.each do |word|
      if @sad.include?(word)
        @sad_count += 1
      elsif @happy.include?(word)
        @happy_count += 1
      end
    end
  end

  def result
    categorize_words
    if @sad_count == 0 && @happy_count > 0
      "Happy"
    elsif @happy_count == 0 && @sad_count > 0
      "Sad"
    elsif @happy_count == 0 && @sad_count == 0
      "Unknown"
    else
      if (@happy_count / @sad_count).to_f > 1.5
        'Happy'
      elsif (@sad_count / @happy_count).to_f > 1.5
        'Sad'
      else
        'Unknown'
      end
    end
  end

  def show_sentence
    @words
  end

  def show_happy_count
    @happy_count
  end

  def show_sad_count
    @sad_count
  end

end
