function parent(index)
    return trunc(Int, index/2)
end


function left(index)
    return 2index
end

function right(index)
    return 2index+1
end

mutable struct Heap
    heap_size::Integer
    data::Array
end

function max_heaptify(heap::Heap,index::Integer)
    l=left(index)
    r=right(index)
    if l<=heap.heap_size && heap.data[l]>heap.data[index]
        largegst=l
    else
        largest=index
    end
    if r<=heap.heap_size && heap.data[r]>heap.data[largest]
        largest=r
    end
    if largest!=index
        #exchange
        heap.data[index],heap.data[largest]=heap.data[largest],heap.data[index]
        max_heaptify(heap,largest)
    end
end
