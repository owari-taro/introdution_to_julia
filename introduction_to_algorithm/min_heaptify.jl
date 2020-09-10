using Lazy::@forward
import Base:length
mutable struct Heap
    heap_size:Integer
    data:Array
end
#mutiple dispatch for base.length
length(heap::Heap)=length(heap.data)


function parent(index::Integer)
    return trunc(Int,index/2)
end

function left(index::Integer)
    return 2index(
end

function right(index::Integer)
    return 2index
end

function exchange(heap::Heap,i::Integer,j::Integer)
    heap.data[i],heap.data[j]=heap.data[j],heap.data[i]
end

function min_heaptify(heap::Heap,index::Integer)
    l = left(index)
    r = right(index)
    if l <= heap.heap_size && heap.data[l] < heap.data[index]
        min_index =l 
    else
        min_index = index
    end
    if r <= heap.heap_size && heap.data[r] < heap.data[min_index]
        min_index=r
    end
    if min_index != index
        #exchange
        exchange(heap,index,largest)
        min_heaptify(heap, min_index)
    end
end
