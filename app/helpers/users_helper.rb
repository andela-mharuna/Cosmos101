module UsersHelper

  #testing if variables in helpers are automatically available in views
  @whatever = "whatever"

  def whatever
    @whatever
  end
end
