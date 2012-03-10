class User < ActiveRecord::Base
  include Authem::Model

  has_many :posts
end
