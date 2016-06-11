require 'test_helper'

class TaskFlowsTest < ActionDispatch::IntegrationTest
  def setup
    @task = create(:task)
  end

  def test_can_create_an_task 
    get "/tasks/new"
    assert_response :success

    post "/tasks",
    	tasks: { user: @task.user, email: @task.email }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end