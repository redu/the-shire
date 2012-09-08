require 'rubygems'
require 'geminabox'

Geminabox.data = "var/geminabox-data"

use Rack::Auth::Basic, "ReduGemsInAbox" do |username, password|
  username == ENV['USERNAME'] && password == ENV['PASSWORD']
end

run Geminabox
