module ReinLearn
    abstract type Element end
    abstract type Action end

    struct State{T<:Element}
        values::Array{T}
        State() = new(Array{T,1})
    end

    struct Environment
        state::State
        actions::Vector{Action}
    end

    struct Agent
        policy::Function
        env::Environment
    end
end