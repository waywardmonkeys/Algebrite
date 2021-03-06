# self test functions


ok_tests = 0
ko_tests = 0

selftest  = ->

	test_low_level()

	test_multiply()
	test_scan()
	test_power()
	test_factor_number(); # long
	test_test()
	test_tensor()
	test_bake()
	test_abs()
	test_adj()
	test_arg()
	test_besselj()
	test_bessely()
	test_ceiling()
	test_choose()
	test_circexp()
	test_clock()
	test_cofactor()
	test_condense()
	test_contract()
	test_defint(); # very long
	test_denominator()
	test_derivative()
	test_dirac()
	test_erf()
	test_erfc()
	test_expand()
	test_expcos()
	test_expsin()
	test_factorpoly()
	test_float()
	test_floor()
	test_gamma()
	test_gcd()
	test_imag()
	test_inner()
	test_lcm()
	test_log()
	test_mag()
	test_mod()
	test_nroots()
	test_numerator()
	test_outer()
	test_polar()
	test_quotient()
	test_rationalize()
	test_real()
	test_rect()
	test_sgn()
	test_taylor()
	test_transpose()
	test_zero()
	test_hermite()
	test_laguerre()
	test_legendre()
	test_binomial()
	test_divisors()
	test_coeff()
	test_sin()
	test_cos()
	test_tan()
	test_sinh()
	test_cosh()
	test_tanh()
	test_arcsin()
	test_arcsinh()
	test_arccos()
	test_arccosh()
	test_arctan()
	test_arctanh()
	test_index()
	test_isprime()
	test_integral()
	test_simplify()
	test_roots()
	test_eigen()
	mini_test()


	alert "passed tests: " + ok_tests + " / failed tests: " + ko_tests
	return


logout = (s) ->
	console.log s


run_test = (s) ->
	i = 0
	t = ""

	test_flag = 1

	run("clear")

	run("e=quote(e)")

	for i in [0...s.length] by 2

		console.log("starting example: " + s[i])
		#alert("starting example: " + s[i])
		document.write("starting example: " + s[i] )
		

		out_count = 0

		try
			resultFromRun = run(s[i])
		catch error
			console.log error
			init()


		if (resultFromRun == s[i+1])
			document.write(" ...ok</br>")
			console.log("ok example: " + s[i])
			alert("ok example: " + s[i])
			ok_tests++
			continue

		ko_tests++
		document.write(" ...fail</br>")
		console.log("test failed: \n")
		console.log(s[i])

		console.log("expected: \n")
		console.log(s[i+1])

		console.log("obtained:\n")
		console.log(resultFromRun)
		alert "test failed: " + s[i] + " expected: " + s[i+1] + " obtained: " + resultFromRun


	test_flag = 0

# these tests do not use "run" but still need a "stop" context


test_low_level = ->
	run("clear"); # to initialize stack and memory

	test_signs_in_rationals()
	test_madd()
	test_msub()
	test_mmul()
	test_mdiv()
	test_mmod()
	test_mprime()
	test_mgcd()
	test_mpow()
	test_mroot()
	# commenting out because it takes a looong time
	# with the current logging. But it works now
	# as I'm commenting it out.
	#test_quickfactor()

