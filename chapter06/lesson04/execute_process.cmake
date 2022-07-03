execute_process(
        COMMAND bash -c "grep PRETTY_NAME /etc/os-release | cut -d\\\" -f2"
        COMMAND_ECHO STDOUT
        OUTPUT_VARIABLE OUTPUT
        OUTPUT_STRIP_TRAILING_WHITESPACE
        ERROR_VARIABLE OUTPUT_ERROR
        ERROR_STRIP_TRAILING_WHITESPACE
)

message("OS: ${OUTPUT}")
message("STDOUT ERROR: ${OUTPUT_ERROR}")