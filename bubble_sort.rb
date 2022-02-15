require 'pry-byebug'

# ======================================================================================================================================================
#                                                                           Método 1
def sort(array)
for i in 0..array.length-1
    # binding.pry
    for j in 0..array.length-2
        if array[j] <= array[j+1]
            array
        elsif array[j] >= array[j+1] 
            array.insert(j,array.delete_at(j+1))
        else
            array
        end
    end
end
    p array
end

# ======================================================================================================================================================
#                                                                      Método 2 - "Bubble Sort"

def bubble_sort(array)
    n = array.length
    sorteado = false
    until sorteado==true do
        # binding.pry
        sorteado=true
        for i in 0..n-2

            if array[i] > array[i+1]
                array.insert(i,array.delete_at(i+1))
                sorteado = false
            end
        end
    end
    p array
end


# sort([0,3,2,4,1,7,3,4,5])
# bubble_sort([0,3,2,4,1,7,3,4,5])



# Medindo diferença de tempo
def measure(&block)
    start = Time.now
    block.call
    Time.now - start
  end

  p "Método 1: #{measure{sort([0,3,2,4,1,7,3,4,5])}}"
  p "Método 2 (Bubble): #{measure{bubble_sort([0,3,2,4,1,7,3,4,5])}}"
