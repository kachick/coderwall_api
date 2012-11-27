# coderwall_api - API wrapper for coderwall.com
# Copyright (c) 2012 Kenichi Kamiya

# Supporting API version of 2012/10/18
# @see http://coderwall.com/api
module Coderwall

  URL_ROOT = 'https://coderwall.com'.freeze

end

require_relative 'coderwall/version'
require_relative 'coderwall/singleton_class'