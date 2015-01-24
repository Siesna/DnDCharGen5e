require 'test_helper'

class AbilityModifiersControllerTest < ActionController::TestCase
  setup do
    @ability_modifier = ability_modifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ability_modifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ability_modifier" do
    assert_difference('AbilityModifier.count') do
      post :create, ability_modifier: { ability_id: @ability_modifier.ability_id, charisma: @ability_modifier.charisma, constitution: @ability_modifier.constitution, dexterity: @ability_modifier.dexterity, intelligence: @ability_modifier.intelligence, strength: @ability_modifier.strength, wisdom: @ability_modifier.wisdom }
    end

    assert_redirected_to ability_modifier_path(assigns(:ability_modifier))
  end

  test "should show ability_modifier" do
    get :show, id: @ability_modifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ability_modifier
    assert_response :success
  end

  test "should update ability_modifier" do
    patch :update, id: @ability_modifier, ability_modifier: { ability_id: @ability_modifier.ability_id, charisma: @ability_modifier.charisma, constitution: @ability_modifier.constitution, dexterity: @ability_modifier.dexterity, intelligence: @ability_modifier.intelligence, strength: @ability_modifier.strength, wisdom: @ability_modifier.wisdom }
    assert_redirected_to ability_modifier_path(assigns(:ability_modifier))
  end

  test "should destroy ability_modifier" do
    assert_difference('AbilityModifier.count', -1) do
      delete :destroy, id: @ability_modifier
    end

    assert_redirected_to ability_modifiers_path
  end
end
