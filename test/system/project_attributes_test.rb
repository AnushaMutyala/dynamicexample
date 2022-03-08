require "application_system_test_case"

class ProjectAttributesTest < ApplicationSystemTestCase
  setup do
    @project_attribute = project_attributes(:one)
  end

  test "visiting the index" do
    visit project_attributes_url
    assert_selector "h1", text: "Project Attributes"
  end

  test "creating a Project attribute" do
    visit project_attributes_url
    click_on "New Project Attribute"

    fill_in "Datatype", with: @project_attribute.datatype
    check "Required" if @project_attribute.required
    fill_in "Title", with: @project_attribute.title
    click_on "Create Project attribute"

    assert_text "Project attribute was successfully created"
    click_on "Back"
  end

  test "updating a Project attribute" do
    visit project_attributes_url
    click_on "Edit", match: :first

    fill_in "Datatype", with: @project_attribute.datatype
    check "Required" if @project_attribute.required
    fill_in "Title", with: @project_attribute.title
    click_on "Update Project attribute"

    assert_text "Project attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Project attribute" do
    visit project_attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project attribute was successfully destroyed"
  end
end
