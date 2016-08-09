class TodoController < Panda::BaseController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params["id"])
  end

  def new
  end

  def edit
    @todo = Todo.find(params["id"])
  end

  def update
    todo = Todo.find(params["id"])
    todo.update(
      title: params["title"],
      body: params["body"],
      status: params["status"]
    )
    redirect_to "/todo/#{todo.id}"
  end

  def create
    Todo.create(
      title: params["title"],
      body: params["body"],
      status: params["status"],
      created_at: Time.now.to_s
    )
    redirect_to "/todo"
  end

  def destroy
    todo = Todo.find(params["id"])
    todo.destroy
    redirect_to "/todo"
  end
end
