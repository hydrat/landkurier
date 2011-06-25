#From https://github.com/rails/rails/issues/546
#monkey patch to fix the fact that ActionDispatch::Integration::Session blows
#away the ApplicationController default_url_options which are necessary
#for the locale scope to work
module ActionDispatch
  module Integration
    class Session
      def default_url_options
        { :locale => 'de' }
      end
    end
  end
end