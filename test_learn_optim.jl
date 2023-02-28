include("Include.jl")

# what training index?
index = 10

# load the include -
include("Include.jl")

# load the training data -
path_to_training_data = joinpath(_PATH_TO_DATA, "Training-Synthetic-Thrombin-TF-1K.csv")
training_df = CSV.read(path_to_training_data, DataFrame)

# size of training set -
(R,C) = size(training_df)

# build the model structure -
path_to_model_file = joinpath(_PATH_TO_DATA, "Feedback.bst")

# build the default model structure -
model = build(path_to_model_file)

# go -
(p, Yₘ, Y) = learn_optim(index,model,training_df,pₒ = nothing)