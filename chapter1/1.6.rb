# Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, 
# write a method to rotate the image by 90 degrees Can you do this in place?

def rotate_matrix(image_matrix,n)
  mid = n/2
  for layer in 0..mid
    first = layer
    last = n - layer -1
    for i in first..last
      offset = i - first
      temp = image_matrix[first][i]
      # left to top
      image_matrix[first][i] = image_matrix[last-offset][first]
      # top to right
      image_matrix[last-offset][first] = image_matrix[last][last - offset];
      # right to bottom
      image_matrix[last][last - offset] = image_matrix[i][last];
      # bottom to left
      image_matrix[i][last] = temp
    end
  end
end