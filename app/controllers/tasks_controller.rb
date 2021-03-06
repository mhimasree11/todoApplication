class TasksController < ApplicationController

    

    def create
        @task = Task.create(task_params)
        if @task.save
         redirect_to todo_list_path(@task.todo_list_id)
        else
            redirect_to root_path
        end
    end
    def update
        @task = Task.find(params[:id])

        if @task.update(task_params)
            redirect_to todo_list_path(@task.todo_list_id)
        else
             redirect_to root_path
        end
    end

    def destroy
       
        @task = Task.find(params[:id])
        if @task.present?
          @task.destroy
        end
        redirect_to todo_list_path(@task.todo_list_id)
              
        
    end

    private
    def task_params
        params.require(:task).permit(:title, :done, :todo_list_id)
    end
end