require 'test_helper'

class MgamedefinitionsControllerTest < ActionController::TestCase
  setup do
    @mgamedefinition = mgamedefinitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mgamedefinitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mgamedefinition" do
    assert_difference('Mgamedefinition.count') do
      post :create, mgamedefinition: { drop_pts: @mgamedefinition.drop_pts, entryfee: @mgamedefinition.entryfee, formatid: @mgamedefinition.formatid, gametimer: @mgamedefinition.gametimer, max_ante: @mgamedefinition.max_ante, max_buyin: @mgamedefinition.max_buyin, max_players: @mgamedefinition.max_players, max_stake: @mgamedefinition.max_stake, maxscore: @mgamedefinition.maxscore, min_ante: @mgamedefinition.min_ante, min_buyin: @mgamedefinition.min_buyin, min_players: @mgamedefinition.min_players, min_stake: @mgamedefinition.min_stake, note: @mgamedefinition.note, typeid: @mgamedefinition.typeid, usebot: @mgamedefinition.usebot }
    end

    assert_redirected_to mgamedefinition_path(assigns(:mgamedefinition))
  end

  test "should show mgamedefinition" do
    get :show, id: @mgamedefinition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mgamedefinition
    assert_response :success
  end

  test "should update mgamedefinition" do
    put :update, id: @mgamedefinition, mgamedefinition: { drop_pts: @mgamedefinition.drop_pts, entryfee: @mgamedefinition.entryfee, formatid: @mgamedefinition.formatid, gametimer: @mgamedefinition.gametimer, max_ante: @mgamedefinition.max_ante, max_buyin: @mgamedefinition.max_buyin, max_players: @mgamedefinition.max_players, max_stake: @mgamedefinition.max_stake, maxscore: @mgamedefinition.maxscore, min_ante: @mgamedefinition.min_ante, min_buyin: @mgamedefinition.min_buyin, min_players: @mgamedefinition.min_players, min_stake: @mgamedefinition.min_stake, note: @mgamedefinition.note, typeid: @mgamedefinition.typeid, usebot: @mgamedefinition.usebot }
    assert_redirected_to mgamedefinition_path(assigns(:mgamedefinition))
  end

  test "should destroy mgamedefinition" do
    assert_difference('Mgamedefinition.count', -1) do
      delete :destroy, id: @mgamedefinition
    end

    assert_redirected_to mgamedefinitions_path
  end
end
