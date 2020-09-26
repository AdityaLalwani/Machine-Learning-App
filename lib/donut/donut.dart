// workaround to get dartpad to recognize this as a dart web thing
// doesn't seem to like the mangled up import in the donut.

import 'dart:html';
import 'dart:math';

var a = .0,
    b = .0,
    u = sin,
    v = cos,
    s = (c) => List.filled(1760, c),
    ra = window.requestAnimationFrame; //
main() async {
  w(0);
}

w(_) {
  var r = s(' '), z = s(.0), j = .0, l = '', k;
  while (j < 2 * pi) {
    var i = .0;
    while (i < 2 * pi) {
      var c = u(i),
          d = v(j),
          e = u(a),
          f = u(j),
          g = v(a),
          h = d + 2.0,
          p = 1 / (c * h * e + f * g + 5),
          l = v(i),
          m = v(b),
          n = u(b),
          t = c * h * g - f * e,
          x = (40 + 30 * p * (l * h * m - t * n)) ~/ 1,
          y = (12 + 15 * p * (l * h * n + t * m)) ~/ 1,
          o = x + 80 * y,
          q = 8 *
              ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n) ~/
              1;
      if (22 > y && y > 0 && x > 0 && 80 > x && p > z[o]) {
        z[o] = p;
        r[o] = '.,-~:'
            r';=!*#$@'[q > 0 ? q : 0];
      }
      i += .02;
    }
    j += .07;
  }
  for (k = 80; k < 1761; k += 80) {
    l += r
            . //OK
            sublist(k - 80, k)
            .join() +
        '\n';
  }
  a += .04;
  b += .02;
  querySelector('#a').text = l;
  ra(w); //
} //ATastyDonut
