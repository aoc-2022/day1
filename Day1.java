import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static java.lang.Integer.parseInt;
import static java.nio.file.Files.readAllLines;

public class Day1 {
    public static void main(String[] args) throws IOException {
        List<Integer> sums = new ArrayList<>();
        int sum = 0;
        for (var line: readAllLines(Path.of("/tmp/aoc/input.1"))) {
            if ("".equals(line)) {
                sums.add(sum);
                sum = 0;
            } else {
                sum += parseInt(line);
            }
        }
        if (sum > 0) sums.add(sum);
        sums.sort(Collections.reverseOrder());
        System.out.println("Task 1: "+sums.get(0));
        System.out.println("Task 2: "+sums.subList(0,3).stream().reduce(0, Integer::sum));
    }
}
