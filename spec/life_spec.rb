# def alive?(param, alive = true)
#   return false if param < 2 || param > 3 || (param == 2 && alive == false)
#   return true if param >= 2 || param == 2 || param == 3
# end

# Constante 
# Variable
# Condición booleana: param == 2
# IF
# While
# ...

class Cell
  class << self
    
    def alive
      AliveCell.new
    end
    
    def dead
      DeadCell.new
    end
    
  end
end

class AliveCell < Cell
  def alive?(params)
    params == 2 || params == 3
  end
end

class DeadCell < Cell
  def alive?(params)
    params == 3
  end
end

describe "Life" do
  
  context "A live cell" do
    
    before do
      @cell = Cell::alive
    end

    it "muere si tiene menos de 2 vecinos" do
      @cell.alive?(1).should == false
    end

    it "vive si tiene 2 vecinos" do
      @cell.alive?(2).should == true
    end

    it "vive si tiene 3 vecinos" do
      @cell.alive?(3).should == true
    end

    it "muere si tiene más de 4" do
      @cell.alive?(4).should == false
    end
    
  end
  
  context "A dead cell" do
    
    before do
      @cell = Cell::dead
    end
    
    it "permanece muerta si tiene menos de 3 vecinos" do
      @cell.alive?(2).should == false
    end

    it "vivde muerta si tiene 3 vecinos" do
      @cell.alive?(3).should == true
    end
    
  end
  
end