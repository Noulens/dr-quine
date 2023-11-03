/*
	It is not in the stars to hold our destiny but in ourselves.
*/
use std::fs::File;
use std::io::Write;
macro_rules! mainer {
	() => {
		fn main()
		{
			let s1 = "/*\n\tIt is not in the stars to hold our destiny but in ourselves.\n*/\nuse std::fs::File;\nuse std::io::Write;\nmacro_rules! mainer {\n\t() => {\n\t\tfn main()\n\t\t{\n\t\t\tlet s1 = ";
			let s2 = "let mut file = File::create(\"Grace_kid.rs\").expect(\"Unable to create file\");\n\t\t\twrite!(file, \"{}{:?};\n\t\t\tlet s2 = {:?};\n\t\t\t{}\", s1, s1, s2, s2).expect(\"Unable to write file\");\n\t\t\tdrop(file);\n\t\t}\n\t};\n}\nmainer!();";
			let mut file = File::create("Grace_kid.rs").expect("Unable to create file");
			write!(file, "{}{:?};
			let s2 = {:?};
			{}", s1, s1, s2, s2).expect("Unable to write file");
			drop(file);
		}
	};
}
mainer!();