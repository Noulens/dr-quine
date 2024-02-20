use std::fs::File;
use std::io::Write;
use std::process::Command;
fn main()
{
	let s1 = "use std::fs::File;\nuse std::io::Write;\nuse std::process::Command;\nfn main()\n{\n\tlet s1 = ";
	let s2 = "let mut i = ";
	let s3 = "i -= 1;\n\tif i >= -1\n\t{\n\t\tlet mut file = File::create(format!(\"Sully_{}.rs\", i+1)).expect(\"Unable to create file\");\n\t\twrite!(file, \"{}{:?};\n\tlet s2 = {:?};\n\tlet s3 = {:?};\n\t{}{};\n\t{}\", s1, s1, s2, s3, s2, i, s3).expect(\"Unable to write file\");\n\t\tlet _output = Command::new(\"sh\").arg(\"-c\").arg(format!(\"rustc Sully_{0}.rs && ./Sully_{0}\", i+1)).output().expect(\"Failed to execute command\");\n\t}\n}\n";
	let mut i = 5;
	i -= 1;
	if i >= -1
	{
		let mut file = File::create(format!("Sully_{}.rs", i+1)).expect("Unable to create file");
		write!(file, "{}{:?};
	let s2 = {:?};
	let s3 = {:?};
	{}{};
	{}", s1, s1, s2, s3, s2, i, s3).expect("Unable to write file");
		let _output = Command::new("sh").arg("-c").arg(format!("rustc Sully_{0}.rs && ./Sully_{0}", i+1)).output().expect("Failed to execute command");
	}
}
