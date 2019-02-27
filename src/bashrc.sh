
function devcpp-cmake-create-build-folder()
{
    build_folder=build
    cmake -H. -B${build_folder}
}

function devcpp-cmake-build()
{
    build_folder=build
    cmake --build ${build_folder} -- -j3
}