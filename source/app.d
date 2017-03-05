import std.stdio, std.conv;

bool isHarshadNumber (uint n) {
  string s = n.to!string;
  uint d;

  foreach (e ; s) d += cast(uint) (e - '0');

  //writefln ("[%s] - %d", s, d);
  if (n % d == 0) return true;

  return false;
}

void main()
{
	writeln("Harshad numbers.");
    foreach (n ; 1..101)  {
      if (isHarshadNumber(n)) writef (" %d ", n);
    }
    writeln;
}
