module PedalPusher
  class GinApp < Padrino::Application
    register SassInitializer
    use ActiveRecord::ConnectionAdapters::ConnectionManagement
    register Padrino::Rendering
    register Padrino::Mailer
    register Padrino::Helpers
    register Padrino::Helpers::AssetTagHelpers

    # Sprockets support
    require 'sprockets'
    register Padrino::Sprockets
    sprockets

    enable :sessions

    before do
      @tabs = %w(Home About Team Locate Contact)
      @poster = '/images/coffee_beans.jpg'
    end

    set :delivery_method,
        :smtp => {
          :address              => 'smtp.gmail.com',
          :port                 => 587,
          # :domain               => I18n.t('contact.email'),
          :user_name            => I18n.t('contact.email'),
          :password             => 'ginapp',
          :authentication       => :plain,
          :enable_starttls_auto => true
          # :openssl_verify_mode  => OpenSSL::SSL::VERIFY_NONE
        }

    post :send_message do
      pedal_pusher_email = I18n.t('contact.email')
      # pedal_pusher_email = 'sofsjunk@gmail.com'
      sender_email = params[:email]
      message_subject = "New mail from #{sender_email} via The Pedal Pusher webapp"
      message_body = params[:message]

      begin
        email do
          from sender_email
          to pedal_pusher_email
          subject message_subject
          body message_body
          via :sendmail
        end
        flash[:notice] = 'Message sent successfully'
      rescue
        flash[:error] = I18n.t('contact.error',
                               pedal_pusher_email: pedal_pusher_email,
                               message_body: message_body)
      ensure
        redirect_to '/'
      end
    end

    get :index do
      render :index
    end

    ##
    # Caching support.
    #
    # register Padrino::Cache
    # enable :caching
    #
    # You can customize caching store engines:
    #
    # set :cache, Padrino::Cache.new(:LRUHash) # Keeps cached values in memory
    # set :cache, Padrino::Cache.new(:Memcached) # Uses default server at localhost
    # set :cache, Padrino::Cache.new(:Memcached, '127.0.0.1:11211', :exception_retry_limit => 1)
    # set :cache, Padrino::Cache.new(:Memcached, :backend => memcached_or_dalli_instance)
    # set :cache, Padrino::Cache.new(:Redis) # Uses default server at localhost
    # set :cache, Padrino::Cache.new(:Redis, :host => '127.0.0.1', :port => 6379, :db => 0)
    # set :cache, Padrino::Cache.new(:Redis, :backend => redis_instance)
    # set :cache, Padrino::Cache.new(:Mongo) # Uses default server at localhost
    # set :cache, Padrino::Cache.new(:Mongo, :backend => mongo_client_instance)
    # set :cache, Padrino::Cache.new(:File, :dir => Padrino.root('tmp', app_name.to_s, 'cache')) # default choice
    #

    ##
    # Application configuration options.
    #
    # set :raise_errors, true       # Raise exceptions (will stop application) (default for test)
    # set :dump_errors, true        # Exception backtraces are written to STDERR (default for production/development)
    # set :show_exceptions, true    # Shows a stack trace in browser (default for development)
    # set :logging, true            # Logging in STDOUT for development and file for production (default only for development)
    # set :public_folder, 'foo/bar' # Location for static assets (default root/public)
    # set :reload, false            # Reload application files (default in development)
    # set :default_builder, 'foo'   # Set a custom form builder (default 'StandardFormBuilder')
    # set :locale_path, 'bar'       # Set path for I18n translations (default your_apps_root_path/locale)
    # disable :sessions             # Disabled sessions by default (enable if needed)
    # disable :flash                # Disables sinatra-flash (enabled by default if Sinatra::Flash is defined)
    # layout  :my_layout            # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
    #

    ##
    # You can configure for a specified environment like:
    #
    #   configure :development do
    #     set :foo, :bar
    #     disable :asset_stamp # no asset timestamping for dev
    #   end
    #

    ##
    # You can manage errors like:
    #
    #   error 404 do
    #     render 'errors/404'
    #   end
    #
    #   error 505 do
    #     render 'errors/505'
    #   end
    #
  end
end
