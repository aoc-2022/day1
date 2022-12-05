with open("/tmp/aoc/input.1") as input:
    loads = [n for n in reversed(sorted([sum([int(a) for a in n.split("\n") if a != ""]) for n in input.read().split("\n\n")]))]
    print("Task 1: ",loads[0])
    print("Task 2: ",sum(loads[0:3]))
