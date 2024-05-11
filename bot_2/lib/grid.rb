class Grid
  attr_reader :size, 
              :row, 
              :column

  def initialize(size, row, column)
    @size   = size
    @row    = row
    @column = column
  end

  def build_grid
    grid = ((("-" * @size) + "\n") * @size).split("\n")
    grid
  end

  def place_bot(grid)
    row = grid[@row]
    row[@column] = "m"
    grid
  end
end