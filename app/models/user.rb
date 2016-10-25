class User < ActiveRecord::Base
  include Clearance::User

  def admin?
    # TODO: implement admin role
    true
  end
end
