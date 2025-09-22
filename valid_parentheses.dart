// Time Complexity: O(n) (we iterate over each character once).
// Space Complexity: O(n) (in the worst case, the stack stores all the opening brackets).

bool isValid(String s) {
  final stack = [];
  final map = {
    '(': ')',
    '{': '}',
    '[': ']',
  };
  for (var char in s.split('')) {
    if (map.containsKey(char)) {
      stack.add(char);
    } else if (map.isNotEmpty && map[stack.last] == char) {
      stack.removeLast();
    } else {
      return false;
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isValid("()")); // true
  print(isValid("()[]{}")); // true
  print(isValid("(]")); // false
  print(isValid("([)]")); // false
  print(isValid("{[]}")); // true
}
