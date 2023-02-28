# load package -
using BSTModelKit

# test logic -
function test_build_bst_model_object()::BSTModel

    # set path to bst file -
    path_to_model_file = joinpath(pwd(),"data","Feedback.bst");
    
    # build -
    model_object = build(path_to_model_file);

    # default: always fail -
    return model_object;
end