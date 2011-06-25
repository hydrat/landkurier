#Fixes problem with set_locale and default_url_options in rspec testing
# See also: https://github.com/rspec/rspec-rails/issues/255
class ActionView::TestCase 
  class TestController
    def default_url_options
      {:locale => 'de'}
    end
  end
end