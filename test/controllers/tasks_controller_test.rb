require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  def setup
    @task = create(:task)
    @attr = attributes_for(:task)
  end

  def test_index
	  get :index
	  assert_response :success
  end

  def test_show
	  get :show, id: @task.id
	 assert_response :success
  end

  def test_new
	  get :new
	  assert_response :success
  end

  def test_create
	  assert_difference('Task.count') do 
	  post :create, tasks: @attr
	end
    assert_redirected_to task_path(assigns(:tasks))
  end

  def test_edit
  	get :edit, id: @task.id
  	assert_response :success
  end

  def test_destroy 
	  assert_difference('Task.count', -1) do
	  delete :destroy, id: @task.id
	  end
    assert_redirected_to tasks_path
  end

  def test_update
	  patch :update, id: @task.id, tasks: @attr
	  assert_redirected_to task_path(assigns(:tasks))
  end
end
