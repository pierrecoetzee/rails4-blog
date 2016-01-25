module ApplicationHelper
  def production?
    ENV['RACK_ENV'] == 'production'
  end
end
