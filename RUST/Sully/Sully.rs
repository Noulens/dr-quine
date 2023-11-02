// use std::fs::File;
// use std::io::Write;
use std::process::Command;
fn main()
{
	let output = Command::new("sh").arg("-c").arg("rustc --version").output().expect("Failed to execute command");
	if output.status.success()
	{
		let stdout = String::from_utf8_lossy(&output.stdout);
		print!("{}", stdout);
	}
	else
	{
		let stderr = String::from_utf8_lossy(&output.stderr);
		eprint!("Command failed:\n{}", stderr);
	}
}