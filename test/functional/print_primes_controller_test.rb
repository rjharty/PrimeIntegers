require 'test_helper'

class PrintPrimesControllerTest < ActionController::TestCase
  setup do
    @print_prime = print_primes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_primes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_prime" do
    assert_difference('PrintPrime.count') do
      post :create, print_prime: {  }
    end

    assert_redirected_to print_prime_path(assigns(:print_prime))
  end

  test "should show print_prime" do
    get :show, id: @print_prime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @print_prime
    assert_response :success
  end

  test "should update print_prime" do
    put :update, id: @print_prime, print_prime: {  }
    assert_redirected_to print_prime_path(assigns(:print_prime))
  end

  test "should destroy print_prime" do
    assert_difference('PrintPrime.count', -1) do
      delete :destroy, id: @print_prime
    end

    assert_redirected_to print_primes_path
  end
end
