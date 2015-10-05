require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(first_name: "Eriko", last_name: "Morais", email: "erikopa@gmail.com", role: "admin",
    password: "footbar", password_confirmation: "footbar")
  end
  
  test "usuário valido" do
    assert @user.valid?
  end
  
  test "nome deve existir" do
    @user.first_name = "   "
    assert_not @user.valid?
  end
  
  test "email deve existir" do
    @user.email = "  "
    assert_not @user.valid?
  end
  
  test "email não deve ser tão longo" do
    @user.email = "a" * 244 + "@exemplo.com"
    assert_not @user.valid?
  end
  
  test "email deve ser um endereço válido" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email deve ser rejeitado caso um endereço inválido" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email deve ser único" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "senha não pode estar em branco (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "senha tem que ter um tamanho minimo" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
