class TodoController < ApplicationController
    def index
    end
    def show
         @todo = Todo.find_by_id(params[:id])       
         # The ... signifies that there is more code in this section, but is not shown in the example for the sake of brevity
       
    end
        
end

def new
end
def create
  t = Todo.new
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro_estimate']
  t.save
  redirect_to "/todo/show/#{ t.id }"
end
def edit
  @todo = Todo.find_by_id(params[:id])
end
def update
  t = Todo.find_by_id(params['id'])
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro-estimate']
  t.save
  redirect_to "/todo/show/#{t.id}"
end
def destroy
  t = Todo.find_by_id(params[:id])
  t.destroy
  redirect_to "/todo/index"
end