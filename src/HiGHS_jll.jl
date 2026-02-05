# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HiGHS_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("HiGHS")
JLLWrappers.@generate_main_file("HiGHS", Base.UUID("8fd58aa0-07eb-5a78-9b36-339c94fd15ea"))
end  # module HiGHS_jll
