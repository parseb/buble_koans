def buble(arr)
        x=[]
        def loops(x,arr)
			 arr.each_with_index do |item|
				ind= arr.index(item)
               	        ind == arr.size - 1 ? next : true   
					if arr[ind] < arr[ind+1] 
						 x[ind]= true 
					else 
					 arr[ind], arr[ind+1] = arr[ind+1], arr[ind]
					 x[ind]= false	
               	        	end
	        		end
	        	return x,arr
                end
  	while x.any? false or x.size < arr.size-1
  	    p "#{x}, #{arr}"
            loops(x,arr) 
	end
  
    
end

p buble([4,5,34,543,2,22,1,56,12])
