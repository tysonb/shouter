class Shout < ActiveRecord::Base
  belongs_to :user
#  We are using Strong Parameters so we do not
#  need the auto generated attr_accessible method:
#  attr_accessible :body

  # pass default scope a block, in rails 4 it will be required
# default_scope { order("created_at DESC") }

# BUT default scopes are evil
# so you can use a normal scope
# Note that the -> operator is a 'lambda literal'
  scope :ordered, -> { order("created_at DESC") }

# scopes are a subset of a collection
# Could also use a class method:
# def self.ordered
#   order("created_at DESC") 
# end

# OR you could add '.order('created_at DESC')'
# to @shouts = current_user.shouts
# in Dashboards Controller, and it would work

  validates :body, presence: true
end
