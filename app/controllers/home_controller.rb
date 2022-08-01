class HomeController < ApplicationController
  before_action :require_login, only: [:test]
  layout "hello_world", only: [:test]

  def index; end
  def services; end

  def test
    @hello_world_props = { name: "#{user.first_name} #{user.last_name}" }
  end
end
