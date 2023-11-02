use std::fs::File;
use std::io::Write;
use std::process::Command;
fn main()
{
	let mut i = 5;
	i -= 1;
	if i >= 0
	{
		let mut file = File::create(format!("Sully_{}.rs", i)).expect("Unable to create file");
		write!(file, "test").expect("Unable to write file");
		let output = Command::new("sh").arg("-c").arg(format!("echo Sully_{}", i)).output().expect("Failed to execute command");
		if !output.status.success()
		{
			let stderr = String::from_utf8_lossy(&output.stderr);
			eprint!("Command failed:\n{}", stderr);
		}
		else
		{
			let stdout = String::from_utf8_lossy(&output.stdout);
			print!("{}", stdout);
		}
	}
}