require 'bundler/setup'
require 'difference_update_seed'


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => File.dirname(__FILE__) + "/test.sqlite3"
)

ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string  :account
    t.integer :age
  end
end

class User < ActiveRecord::Base
end

RSpec.configure do |config|
  config.order = "random"
end

