mutable struct Queue
    head::Integer
    tail::Integer
    array::Array
    length::Integer
end
Base.length(queue::Queue)=queue.length

function Queue(length::Integer)
    queue=Queue(1,1,[nothing for i in 1:length],length)
    return queue
end

function enque(queue:: u,x)
    queue.array[queue.tail]=x
    if queue.tail==length(queue)
        queue.tail=1
    else
        queue.tail+=1
    end
end


function dequeue(queue::Queue)
    x=queue[queue.head]
    if queue.head==length(queue)
        queue.head=1
    else
        queue.head+=1
    end
end


    