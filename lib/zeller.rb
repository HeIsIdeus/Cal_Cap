class Zeller

  def self.locate_weekday(m, y)

    if m < 3

      y = y - 1

      m += 12

    end

    q = 1

    k = y % 100

    j = y/100

    h = (q + ((13*(m+1)/5)) + k + (k/4) + (j/4) + (5*j)) % 7

  end

end
