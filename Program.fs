open System.IO

let input = File.ReadAllLines "/Users/xeno/projects/aoc/day1/input.txt" |> Array.toList

input |> List.map (printfn "%A")

let rec sumcals acc lines =
    match lines with
    | ""::rest -> acc :: (sumcals 0 rest)
    | i::rest -> sumcals ((i |> int) + acc) rest
    | [] -> [acc]

let sums = sumcals 0 input

let m = sums |> List.max 
printfn "AAA"

sums |> List.map (printfn "%A")

printfn "%A" m

let ordered = sums |> List.sort |> List.rev

let a::b::c::r = ordered
let z = a + b + c 

printfn "%A" z 