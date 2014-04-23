require 'zeller'
require 'test/unit'

class ZellerTest < MiniTest::Unit::TestCase

  def test_first_day_of_month_Sunday
    h = Zeller.locate_weekday(1, 2012)
    assert_equal 1, h

  end

  def test_01a_locate_weekday
    h = Zeller.locate_weekday(4, 2014)
    assert_equal 3, h
  end

  def test_01a_end_of_days
    h = Zeller.locate_weekday(1, 3000)
    assert_equal 4, h

  end

  def test_01a_begin_of_days
    h = Zeller.locate_weekday(1, 1800)
    assert_equal 4, h

  end

  def test_01b_begin_of_days
    h = Zeller.locate_weekday(02, 1800)
    assert_equal 0,  h

  end

  def test_01b_locate_weekday
    h = Zeller.locate_weekday(2, 2012)
    assert_equal 4, h

  end

  def test_03a_locate_weekday
    h = Zeller.locate_weekday(2, 1803)
    assert_equal 3, h

  end

  def test_01a_leap_year
    h = Zeller.locate_weekday(3, 2012)
    assert_equal 5, h

  end

end

