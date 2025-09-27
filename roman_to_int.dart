/**
  Time Complexity = O(n) ==> [
    - We iterate over the value of string [s] once from start to end.
    - In each step: just a comparison + addition/subtraction = O(1).
    - Number of steps = number of characters = n.
  ]

  Space Complexity = O(1) => [
    - We have a fixed map with 7 elements (I, V, X, L, C, D, M).
    - Besides that, only a total variable and a loop counter.
    - No data structures that grow with input size.
  ]
 */

void main() {
  print(romanToInt("III")); // 3
  print(romanToInt("LVIII")); // 58
  print(romanToInt("MCMXCIV")); // 1994
  print(romanToInt("MCMXCIVC")); // 2084
}

int romanToInt(String s) {
  Map<String, int> map = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  int total = 0;

  for (int i = 0; i < s.length - 1; i++) {
    if (map[s[i]]! < map[s[i + 1]]!) {
      total -= map[s[i]]!;
    } else {
      total += map[s[i]]!;
    }
  }
  print('total $total');
  print('last char is ${map[s[s.length - 1]]}');
  total += map[s[s.length - 1]]!;
  return total;
}
