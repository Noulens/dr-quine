/*
	What's past is prologue.
 */
fn func()
{
	let s1 = "/*\n\tWhat's past is prologue.\n */\nfn func()\n{\n\tlet s1 = ";
	let s2 = "print!(\"{}{:?};\n\tlet s2 = {:?};\n\t{}\", s1, s1, s2, s2);\n}\n\nfn main()\n{\n\tfunc();\n\t/*\n\t\tO brave new world!.\n\t*/\n}";
	print!("{}{:?};
	let s2 = {:?};
	{}", s1, s1, s2, s2);
}

fn main()
{
	func();
	/*
		O brave new world!.
	*/
}