#
#
struct OpenCommand end

tmp=OpenCommand()

struct Val{x} end

function process_command(::Val{:open},filename)
    println("opening file $filename")
end

function process_command(::Val{:close},fielname)
    println("closing file $filename")
end




function process_command(command::String,args...)
    process_command(Symbol(command),args...)
end





struct Command{T} end
#create a singleton instance from string
Command(s::AbstractString)=Command{Symbol(s)}()]


function process_command(command::String,args...)
    process_command(Command(command),args...)
end
function process_command(::Command{:open},filename)
    println("opening file $filename")
end

function process_command(::Command{:close},filename)
    println("closing file $filename")
end
