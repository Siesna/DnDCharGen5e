require 'test_helper'

class SavingThrowsControllerTest < ActionController::TestCase
  setup do
    @saving_throw = saving_throws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saving_throws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saving_throw" do
    assert_difference('SavingThrow.count') do
      post :create, saving_throw: { ability_id: @saving_throw.ability_id, charisma: @saving_throw.charisma, constitution: @saving_throw.constitution, dexterity: @saving_throw.dexterity, intelligence: @saving_throw.intelligence, strength: @saving_throw.strength, wisdom: @saving_throw.wisdom }
    end

    assert_redirected_to saving_throw_path(assigns(:saving_throw))
  end

  test "should show saving_throw" do
    get :show, id: @saving_throw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saving_throw
    assert_response :success
  end

  test "should update saving_throw" do
    patch :update, id: @saving_throw, saving_throw: { ability_id: @saving_throw.ability_id, charisma: @saving_throw.charisma, constitution: @saving_throw.constitution, dexterity: @saving_throw.dexterity, intelligence: @saving_throw.intelligence, strength: @saving_throw.strength, wisdom: @saving_throw.wisdom }
    assert_redirected_to saving_throw_path(assigns(:saving_throw))
  end

  test "should destroy saving_throw" do
    assert_difference('SavingThrow.count', -1) do
      delete :destroy, id: @saving_throw
    end

    assert_redirected_to saving_throws_path
  end
end
