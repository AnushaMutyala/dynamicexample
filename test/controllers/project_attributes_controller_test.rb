require 'test_helper'

class ProjectAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_attribute = project_attributes(:one)
  end

  test "should get index" do
    get project_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_project_attribute_url
    assert_response :success
  end

  test "should create project_attribute" do
    assert_difference('ProjectAttribute.count') do
      post project_attributes_url, params: { project_attribute: { datatype: @project_attribute.datatype, required: @project_attribute.required, title: @project_attribute.title } }
    end

    assert_redirected_to project_attribute_url(ProjectAttribute.last)
  end

  test "should show project_attribute" do
    get project_attribute_url(@project_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_attribute_url(@project_attribute)
    assert_response :success
  end

  test "should update project_attribute" do
    patch project_attribute_url(@project_attribute), params: { project_attribute: { datatype: @project_attribute.datatype, required: @project_attribute.required, title: @project_attribute.title } }
    assert_redirected_to project_attribute_url(@project_attribute)
  end

  test "should destroy project_attribute" do
    assert_difference('ProjectAttribute.count', -1) do
      delete project_attribute_url(@project_attribute)
    end

    assert_redirected_to project_attributes_url
  end
end
