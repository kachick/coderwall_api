require 'declare/autorun'

$VERBOSE = true

require_relative '../lib/coderwall'

The(Coderwall.user('kachick'))do |user|

  is_a Coderwall::User

  The user.username do
    is 'kachick'
  end

  The user.name do
    is 'Kenichi Kamiya'
  end

  The user.location do
    is 'Japan'
  end

  ok user.accounts.any?{|ac|ac.service == 'github'}
  ok(user.badges.select{|badge|/ruby/i =~ badge.description}.size >= 2)

end

