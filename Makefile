# get dependencies
deps:
	mix deps.get

# run
run: deps
	@echo "Run in 2 differents terminals"
	@echo "iex --sname titi -S mix"
	@echo "iex --sname toto -S mix"
