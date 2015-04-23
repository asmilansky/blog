require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  should have_many :posts
end
