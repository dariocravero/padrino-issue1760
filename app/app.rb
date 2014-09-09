module Issue1760
  class App < Padrino::Application
    register Padrino::Helpers
    enable :sessions

    get :index do
      @parent = Parent.new
      @parent.children << Child.new
      render :index
    end
  end
end
