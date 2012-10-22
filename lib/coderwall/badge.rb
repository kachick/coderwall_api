require 'time'
require 'striuct'

module Coderwall

  # @return [Class]
  Badge = Striuct.define {
    member :name, AND(String, /\A[^\n]+\z/)
    member :description, AND(String, /\A[^\n]+\z/)
    member :created, Time, &->v{Time.parse v}
    alias_member :time, :created
    member :badge, URI, &->v{URI.parse v}
    alias_member :image_uri, :badge
  }

end
