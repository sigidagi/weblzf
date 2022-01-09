cmake_minimum_required(VERSION 3.1)

project(weblzf)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -Wall -Wno-expansion-to-defined")

include_directories(./include)

set(LZF_SOURCE
    ./src/lzf_c.c
    ./src/lzf_d.c
    ./src/lzf_em.c
)

add_executable( ${PROJECT_NAME} ${LZF_SOURCE})

target_link_options(${PROJECT_NAME} PRIVATE
    -sEXPORTED_RUNTIME_METHODS=['cwrap']
    -sEXPORTED_FUNCTIONS=['_version','_compress','_decompress']
)

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND mv ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.js ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.wasm
    ${CMAKE_SOURCE_DIR}/bin
)
