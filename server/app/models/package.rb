class Package < ActiveRecord::Base
  has_many :emerges
  has_many :comment, :as => :commentable

  def fullname
    category + "/" + name + "-" + version
  end
  def page
    "/packages/" + category + "/" + name + "/?version=" + version
  end
end
