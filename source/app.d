import std.stdio, std.conv;

bool isHarshadNumber (uint n) {
  string s = n.to!string;
  uint d;

  foreach (e ; s) d += cast(uint) (e - '0');

  //writefln ("[%s] - %d", s, d);
  if (n % d == 0) return true;

  return false;
}

void main(string[] args)
{
  int max = 100;

  writeln("Harshad numbers.");

  if (args.length > 1)
    max = args[1].to!int;
  
  foreach (n ; 1..(max+1))  {
    if (isHarshadNumber(n)) writef (" %d ", n);
  }
  writeln;
}
