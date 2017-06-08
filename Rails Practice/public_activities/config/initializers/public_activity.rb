# config/initializers/public_activity.rb
# PublicActivity::Config.set do
#   orm :mongoid
# end
PublicActivity::Activity.class_eval do
    attr_accessor :key, :owner, :parameters, :recipient, :trackable
end