
<img src="https://raw.githubusercontent.com/davidedc/Algebrite/master/readme-images/algebrite-logo-for-readme.png" width="150px" alt="algebrite header"/>

Algebrite is a Javascript library for symbolic mathematics (actually, mostly coffeescript resulting in Javascript) keeping the code as simple as possible in order to be comprehensible and easily extensible.

# Why Algebrite

Algebrite is...
* lightweight: made to be simple to comprehend and extend, it only depends on BigInteger.js by Peter Olson.
* self-contained: doesn't need connection to servers or another "backend" CAS
* a library: beyond use as an interactive tool, algebrite can be embedded in your applications and extended with custom functions.
* free: MIT-Licenced

# Features
Algebrite supports: arbitrary-precision arithmetic, complex quantities, simplification, expansion , substitution, symbolic and numeric roots, units of measurement, derivatives and gradients, tensors, integrals, multi-integrals, computing integrals and much more!

# Examples and manual

Please refer to [http://algebrite.org/](http://algebrite.org/)

# How to build
To recompile the tables (this should almost never be needed):

```coffee --compile --bare tables/itab.coffee```

```coffee --compile --bare tables/primetab.coffee```

...to recompile the actual sources as soon as they change:

```coffee --watch  -c --bare --join algebrite-0.1.0.js  *.coffee```

The "log diffing" page is a simple tool for comparing traces of EigenMath and Algebrite. This might go away eventually but it's a reassuring piece of tool to keep until the two code-bases are similar.

# How to test
The testing process is a little involved at the moment:

1. open Chrome at the index.html page
2. open the console
3. ```run("selftest")```
4. the tests will start spewing-out alert messages
5. check the "don't bring-up pop-ups again" (or similar) message in one of the alerts
6. the tests will keep running showing progress in both the console and in the page
7. some individual tests can take a minute or two to complete, during which the page/console might be unresponsive
8. the "processes" tab of Chrome will keep an eye on CPU utilisation
9. at the end of the tests the system will go quiet. You can also keep an eye on CPU utilisation going to zero
10. ```ok_tests``` and ```ko_tests``` variables will show the count of successes/failures


# Contribute
please take a look at the [contributing](https://github.com/davidedc/Algebrite/blob/master/contributing.md) file.

# References

[The EigenMath CAS by George Weigt](http://eigenmath.sourceforge.net/Eigenmath.pdf). Also you might want to check another fork of EigenMath: [SMIB by Philippe Billet](http://smib.sourceforge.net/).

Another CAS of similar nature is [SymPy](http://www.sympy.org/en/index.html) made in Python.

Three other Javascript CAS are

* [javascript-cas by Anthony Foster](https://github.com/aantthony/javascript-cas) supporting "differentiation, complex numbers, sums, vectors (dot products, cross products, gradient/curl etc)"
* [Coffeequate by Matthew Alger](http://coffeequate.readthedocs.org/) supporting "quadratic and linear equations, simplification of most algebraic expressions, uncertainties propagation, substitutions, variables, constants, and symbolic constants".
* [Algebra.js by Nicole White](http://algebra.js.org) which among other things can build and solve equations via a "chainable" API.


# The MIT License (MIT)

Copyright © `2016` `all algebrite contributors`

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the “Software”), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
