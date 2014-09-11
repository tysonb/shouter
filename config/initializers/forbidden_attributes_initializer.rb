# send sends a message to an object instance and its ancestors 
# in class hierarchy until some method reacts (because its name 
# matches the first argument).
ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)
