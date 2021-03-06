# encoding: utf-8

require File.dirname(__FILE__) + '/test_helper'

class BanklinkHelperTest < MiniTest::Unit::TestCase
  include Banklink

  def test_should_create_fields_for_1002
    options = {}
    options[:amount] = '1.55'
    options[:currency] = 'LVL'
    options[:return] = 'http://default/'
    options[:reference] = '54'
    options[:message] = 'Pay for smtx'

    helper = Swedbank::Helper.new(300, '300', options)
    assert_equal 12, helper.form_fields.size
  end

end
