require 'test_helper'

class NpcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @npc = npcs(:one)
  end

  test "should get index" do
    get npcs_url
    assert_response :success
  end

  test "should get new" do
    get new_npc_url
    assert_response :success
  end

  test "should create npc" do
    assert_difference('Npc.count') do
      post npcs_url, params: { npc: { agility: @npc.agility, armor: @npc.armor, cunning: @npc.cunning, hitpoints: @npc.hitpoints, intellect: @npc.intellect, klass_id: @npc.klass_id, level: @npc.level, mana: @npc.mana, name: @npc.name, notice: @npc.notice, presence: @npc.presence, race_id: @npc.race_id, resistence: @npc.resistence, stamina: @npc.stamina, strength: @npc.strength, willpower: @npc.willpower } }
    end

    assert_redirected_to npc_url(Npc.last)
  end

  test "should show npc" do
    get npc_url(@npc)
    assert_response :success
  end

  test "should get edit" do
    get edit_npc_url(@npc)
    assert_response :success
  end

  test "should update npc" do
    patch npc_url(@npc), params: { npc: { agility: @npc.agility, armor: @npc.armor, cunning: @npc.cunning, hitpoints: @npc.hitpoints, intellect: @npc.intellect, klass_id: @npc.klass_id, level: @npc.level, mana: @npc.mana, name: @npc.name, notice: @npc.notice, presence: @npc.presence, race_id: @npc.race_id, resistence: @npc.resistence, stamina: @npc.stamina, strength: @npc.strength, willpower: @npc.willpower } }
    assert_redirected_to npc_url(@npc)
  end

  test "should destroy npc" do
    assert_difference('Npc.count', -1) do
      delete npc_url(@npc)
    end

    assert_redirected_to npcs_url
  end
end
