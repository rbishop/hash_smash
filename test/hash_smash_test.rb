require 'minitest/autorun'
require_relative '../lib/hash_smash'

class HashSmashTest < Minitest::Test
  def setup
    @foo_bar_baz = {
      foo:
        bar: {
          baz: 'widget'
        }
      }
    }
  end

  def test_it_compresses_to_a_single_level
    smashed = @foo_bar_baz.smash

    assert_equal 'widget', smash['foo.bar.baz']
  end

  def test_it_mutates_the_receiver
    @foo_bar_baz.smash!

    assert_equal 'widget', @foo_bar_baz['foo.bar.baz']
  end
end
