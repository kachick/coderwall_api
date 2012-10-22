$VERBOSE = true

require_relative '../lib/coderwall'

Coderwall.user('kachick') do
  p name      #=> "Kenichi Kamiya"
  p location #=> "Japan"
  p endorsements  #=> 1
  p accounts.any?{|ac|ac.service == 'github'} #=> true
  p badges.select{|badge|/ruby/i =~ badge.description}.size #=> 2
end
