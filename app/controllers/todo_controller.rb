class TodoController < ApplicationController
    def index
    end
    def show
         @todo = Todo.find_by_id(params[:id])       
         # The ... signifies that there is more code in this section, but is not shown in the example for the sake of brevity
       
    end
        
end



 
 