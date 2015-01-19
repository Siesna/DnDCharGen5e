require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { alignment: @character.alignment, armor_class: @character.armor_class, background: @character.background, character_class: @character.character_class, experience: @character.experience, hit_die: @character.hit_die, languages: @character.languages, level: @character.level, max_hp: @character.max_hp, max_hp: @character.max_hp, name: @character.name, proficiency_bonus: @character.proficiency_bonus, race: @character.race, speed: @character.speed, total_hit_die: @character.total_hit_die }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { alignment: @character.alignment, armor_class: @character.armor_class, background: @character.background, character_class: @character.character_class, experience: @character.experience, hit_die: @character.hit_die, languages: @character.languages, level: @character.level, max_hp: @character.max_hp, max_hp: @character.max_hp, name: @character.name, proficiency_bonus: @character.proficiency_bonus, race: @character.race, speed: @character.speed, total_hit_die: @character.total_hit_die }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
