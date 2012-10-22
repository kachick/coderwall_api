require 'uri'
require 'open-uri'
require 'json'
require_relative 'user'

module Coderwall

  class << self

    # @param [String] username
    # @return [User]
    def user_for(username, &block)
      user = User.for_pairs hash_for(username)
      user.instance_exec(&block) if block_given?
      user
    end
    
    alias_method :user, :user_for

    # @param [String] username
    # @return [Hash]
    def hash_for(username)
      JSON.parse json_uri_for(username).read
    end

    # @param [String] username
    # @return [URI]
    def json_uri_for(username)
      URI.parse "#{URL_ROOT}/#{username}.json"
    end
    
    alias_method :api_uri_for, :json_uri_for

  end

end
