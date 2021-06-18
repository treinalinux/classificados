require 'test_helper'

class FirstTest < ActiveSupport::TestCase
  test 'Primeiro Teste' do
    variavel = 'Alan'

    assert_equal 'Alan', variavel
  end
end
