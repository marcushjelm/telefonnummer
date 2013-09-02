require 'test_helper'

class TelefonnummerHelperTest < ActionView::TestCase
  helper Telefonnummer::TelefonnummerHelper
  
  test '2 prefix' do
    assert_equal telefonnummer_to_human('08123456'), '08-12 34 56'
  end

  test '3 prefix' do
    assert_equal telefonnummer_to_human('011123456'), '011-12 34 56'
    assert_equal telefonnummer_to_human('0731234567'), '073-123 45 67'
  end

  test '4 prefix' do
    assert_equal telefonnummer_to_human('012012345'), '0120-123 45'
  end

end
