require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    # este metodo sera executado antes de qualquer teste, servira como um metodo global
    def setup
        @category = Category.new(name: "Sports")
    end

    # teste para validar uma categoria
    test "category should be valid" do
        # valida se é um objeto de categoria valido
        assert @category.valid?
    end

    test "name should be present" do
        @category.name = " "
        # verifica se é falso
        assert_not @category.valid?
        
    end

    test "name should be unique" do
        @category.save
        @category2 = Category.new(name: "Sports")
        assert_not @category2.valid?
    end

    test "name should not be too long" do
        @category.name = "a" * 26
        assert_not @category.valid?
    end

    test "name should not be too short" do
        @category.name = "aa"
        assert_not @category.valid?
    end
end