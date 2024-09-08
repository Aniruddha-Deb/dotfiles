require('competitest').setup({
    compile_command = {
	cpp = { exec = "clang++", args = { "-std=c++20", "-DDEBUG", "-include-pch", "../include/bits/stdc++.h.pch", "-I../include", "$(FNAME)", "-o", "../bin/$(FNOEXT)" } },
    },
    run_command = {
        cpp = { exec = "../bin/$(FNOEXT)" }
    },
    testcases_directory = "../tc",
    template_file = "../template.$(FEXT)",
    received_contests_prompt_directory = false,
    received_contests_prompt_extension = false,
    open_received_contests = false
})
