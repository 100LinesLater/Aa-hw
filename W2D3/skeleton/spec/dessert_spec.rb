require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Shef")}
  subject(:dessert) { Dessert.new("type", 80, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("type")
    end
    it "sets a quantity" do 
      expect(dessert.quantity).to eq(80)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("muffin", "string", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    context "add ingredient to array" do
      before(:each) do
        dessert.add_ingredient("eggs")
      end

      it "adds an ingredient to the ingredients array" do 
        expect(dessert.ingredients).to include("eggs")
      end
    end
  end

  describe "#mix!" do
    context "add ingredients and mix them" do
      before(:each) do 
        dessert.add_ingredient("bacon")
        dessert.add_ingredient("cheese")
        dessert.add_ingredient("milk")
        dessert.add_ingredient("sugar")
      end
      it "shuffles the ingredient array" do 
        ingred1 = dessert.ingredients.dup
        dessert.mix!
        expect(dessert.ingredients).to_not eq(ingred1)
      end
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert.eat(40)
      expect(dessert.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect{dessert.eat(90)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("Chef Shef the Great Baker")
      expect(dessert.serve).to eq("Chef Shef the Great Baker has made 80 types!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
