# Let's implement a SlotMachine class with 3 reels. Each reel has 3 different items.

# SlotMachine.new(%w[🍒 7️⃣ 🛎]) => already played slot machine

# The class has one public instance method, score, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   🤩	50	                25 (2 jokers + anything)
# Star    ⭐️	40	                20
# Bell    🛎	30	                15
# Seven   7️⃣	20	                10
# Cherry  🍒	10	                5

SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]
          #   0   1  2  3  4 (index)
          #   1   2  3  4  5 * 10 (if 3 of a kind (🤩🤩🤩))
          #   5  10 15 20 25 * 5  (if 2 of a kind + 1 ⭐⭐🤩) 
          #  10  20 30 40 50

# create 
class SlotMachine
  attr_reader :reels, :score
  # initialize with reels (array)
  def initialize(reels = [])
    @reels = reels
  end

  # create score
  # SlotMachine.new(%w[🍒 7️⃣ 🛎])
  def score
    # @user_score += SYMBOLS.index(@reels[0]) + SYMBOLS.index(@reels[1]) + SYMBOLS.index(@reels[2])
    # whether the reels are a 3 of a kind
    if @reels[0] == @reels[1] && @reels[0] == @reels[2]
      (SYMBOLS.index(@reels[0]) + 1) * 10
    elsif @reels.include?("🤩") && @reels.uniq.length == 2
      # whether the reels are a pair + joker
      # checking if the first reel is a joker, and taking the next reel if it is.
      score_reel = @reels[0] == "🤩" ? @reels[1] : @reels[0]
      (SYMBOLS.index(score_reel) + 1) * 5
    else
      # whether it is not the above returns 0
      0
    end
  end
end
