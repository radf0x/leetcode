class MedianOfTwoArrays

  # first partition X (just / 2) and Y (=(x+y+1)/2)

  # found 
  # maxLeftX <= maxRightY AND maxLeftY <= maxRightX
  # elsif
  # maxLeftX > minRightY
  # move left x + 1
  # else  
  # move right x - 1 
  def self.call(nums1 = [1,2,3,4,10], nums2 = [5,6,7,8,9])
    # make sure input 1 is always shorter than input 2
    return find_median_of_sorted_array(nums2, nums1) if nums1.length > nums2.length
    nums1 = nums1.sort
    nums2 = nums2.sort
    x = nums1.length
    y = nums2.length
    low = 0.0
    high = x.to_f

    while low <= high
      # partition input 1
      partX = (low + high) / 2.0
      # partition input 2
      partY = ((x + y + 1.0) / 2.0) - partX

      maxLeftX = partX > 0 ? nums1[partX - 1] : -Float::INFINITY
      minRightX = partX == x ? Float::INFINITY : nums1[partX]

      maxLeftY = partY > 0 ? nums2[partY - 1] : -Float::INFINITY
      minRightY = partY == y ? Float::INFINITY : nums2[partY]
      if maxLeftX <= minRightY && minRightX >= maxLeftY
        if (x+y) % 2 == 0 # need to pick 2 numbers for a even array
          return ([maxLeftX, maxLeftY].max + [minRightX, minRightY].min) / 2.0
        else
          return [maxLeftX, maxLeftY].max
        end
      elsif maxLeftX > minRightY
         # max of the left of partitioned input 1 is larger
         # than the smallest num on the right side of partitioned input 2
         # moving the left of partitioned input 1 one step for a smaller number
        high = partX - 1
      else
        # max of the left side of partitioned input 1 is smaller
        # than the smallest num on the right side of partition input 2
        # moving the left side of partitioned input 1 one step for a bigger number
        low = partX + 1
      end
    end
  end
end
