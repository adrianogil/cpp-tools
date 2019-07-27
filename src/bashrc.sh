
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

function devcpp-gen-header-class()
{
    class_name=$1

    header_filename=$(echo ${class_name//_} | tr '[:upper:]' '[:lower:]')'.h'
    header_macro=$(echo ${class_name//_} | tr '[:lower:]' '[:upper:]')'_H'

    echo "#ifndef "${header_macro} >  ${header_filename}
    echo "#define "${header_macro} >> ${header_filename}
    echo "  "                      >> ${header_filename}
    echo "class "${class_name}   >> ${header_filename}
    echo "{ "                      >> ${header_filename}
    echo "}; "                     >> ${header_filename}
    echo "  "                      >> ${header_filename}
    echo "#endif "                 >> ${header_filename}
}