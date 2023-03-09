require('competitest').setup({
    
    compile_command = {
	c = { exec = "gcc-12", args = { "-std=c11", "-O3", "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
	cpp = { exec = "g++-12", args = { "-std=c++17", "-O3", "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
	rust = { exec = "rustc", args = { "$(FNAME)" } },
	java = { exec = "javac", args = { "$(FNAME)" } },
    }
})
