class Array

  def insertion_sort
    sorted = [self.shift]
    unsorted = self

    # Do Stuff

    sorted
  end

  def quick_sort(list = self)
    puts list.join(',')
    pivot = list.delete_at(list.length / 2)
      smaller = []
      larger = []
      list.each do |number|
        if number > pivot
          larger << number
        else
          smaller << number
        end
      end
      smaller = if smaller.length > 0
                  quick_sort(smaller)    
                else 
                  []
                end
      larger = if larger.length > 0
                 quick_sort(larger)
               else 
                 []
               end
      smaller + [pivot] + larger
  end


end
