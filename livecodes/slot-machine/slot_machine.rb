class SlotMachine
  ITEMS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      @reels = @reels.map { ITEMS.sample }
      print @reels.join("\t") + "\r"
      $stdout.flush
      sleep(0.03)
    end
    sleep(0.5)
    @reels = @reels.map { ITEMS.sample }
  end

  def score
    if three_of_the_same?
      # find which item is the unique one
      unique_item = @reels[0]
      # get the index of the item in the ITEMS array
      item_value = ITEMS.index(unique_item) + 1
      item_value * 10
    elsif two_of_the_same_plus_joker?
      doubled_item = @reels.sort[1]
      item_value = ITEMS.index(doubled_item) + 1
      item_value * 5
    else
      0
    end
  end

  private

  def three_of_the_same?
    @reels.uniq.length == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.length == 2 && @reels.include?('🤩')
  end
end
