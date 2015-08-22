class BonusDrink

    @@total = 0


  def self.total_count_for(amount)

    @@total = amount
    get_bonus(amount)

  end


  def self.get_bonus(amount)

    bonus = (amount/3).to_i

    if amount >= 3

        @@total += bonus
        rest = bonus + amount % 3
        get_bonus(rest)

    else

        return @@total

    end

  end

end

p BonusDrink.total_count_for(100)