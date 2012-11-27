require_relative 'account'
require_relative 'badge'

module Coderwall

  # @return [Class]
  User = Striuct.define {
    member :username, AND(String, /\A\S+\z/)
    alias_member :id, :username
    member :name, AND(String, /\A[^\n]+\z/)
    member :location, OR(nil, AND(String, /\A[^\n]+\z/))
    member :endorsements, AND(Integer, ->int{int >= 0})
    alias_member :endorsements_count, :endorsements
    member :team, OR(nil, AND(String, /\A[a-f0-9]{24}\z/i))

    member :accounts, OR(nil, GENERICS(Account)) do |pairs|
      pairs.map{|key, value|
        Account.for_pairs service: key, username: value
      }
    end

    member :badges, GENERICS(Badge) do |pairs_list|
      pairs_list.map{|pairs|Badge.for_pairs pairs}
    end
  }

end
