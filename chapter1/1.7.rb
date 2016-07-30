# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column is set to 0

def make_zero(matrix)
  rows = matrix.length - 1
  col = matrix[0].length - 1
  # identifing the rows and columsn
  array_rows = Array.new(rows)
  array_col = Array.new(col)
  for i in 0..rows
    for j in 0..col
      if(matrix[i][j] == 0)
        array_rows[i] = 1
        array_col[j] = 1
      end
    end
  end
  for i in 0..rows
    for j in 0..col
      if((array_rows[i] == 1)||(array_col[j] == 1))
        matrix[i][j] = 0
      end
    end
  end
  p matrix
end