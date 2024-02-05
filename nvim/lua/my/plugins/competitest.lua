require('competitest').setup({
    
    compile_command = {
	c = { exec = "gcc-13", args = { "-std=c11", "-O2", "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
	cpp = { exec = "g++-13", args = { "-std=c++20", "-Wl,-ld_classic", "-O2", "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
	rust = { exec = "rustc", args = { "$(FNAME)" } },
        -- ocaml = { exec = "ocamlc", args = { "-o", "$(FNOEXT)", "$(FNAME)" } },
	java = { exec = "javac", args = { "$(FNAME)" } },
    },
    run_command = {
	cpp   = { exec = './$(FNOEXT)' },
	rust  = { exec = './$(FNOEXT)' },
	ocaml = { exec = 'ocaml', args = {'$(FNAME)'} }
    },
    template_file = {
        cpp = "~/DevAnon/CP/comp-workspace/template.cpp",
        ocaml = "~/DevAnon/CP/comp-workspace/template.ml"
    }
})
