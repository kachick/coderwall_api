require 'striuct'

module Coderwall

  # @return [Class]
  Account = Striuct.define {
    member :service, AND(String, /./)
    member :username, AND(String, /./)
    alias_member :id, :username
  }

end
