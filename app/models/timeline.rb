class Timeline

  #this is the second option how to solve the to_partial_path
  include ActiveModel::Model
  extend ActiveModel::Naming

  def initialize user
    @user = user
  end

  #when we called render @dashboard.timeline this error was raised
  #is not an ActiveModel-compatible object. It must implement :to_partial_path.
  #So it would render then from this path
  #def to_partial_path
  #  "timelines/timeline"
  #end

  def shouts
    Shout.where(user_id: shout_user_ids)
  end

  private

  def shout_user_ids
    [@user.id] + @user.followed_user_ids
  end

end