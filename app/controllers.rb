Issue1760::App.controllers :parents do
  get :index do
    render :index
  end

  get :new do
    @parent = Parent.new
    @parent.children << Child.new
    render :index
  end

  get :view, with: :id do
    @parent = Parent[params[:id]]
    render :index
  end

  post :index do
    parent = Parent.create(email: params['parent']['email'])

    params['parent']['children_attributes'].each do |i, child_data|
      Child.create(parent_id: parent.id, name: child_data['name'])
    end

    redirect url(:parents, :view, parent.id)
  end
end
