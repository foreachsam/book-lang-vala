
//https://wiki.gnome.org/Projects/Vala/BasicSample

void main() {
	try {
		string file = "data.txt";
		string content;

		FileUtils.get_contents(file, out content);

		stdout.printf("%s\n", content);

	} catch (FileError e) {
		stderr.printf("%s\n", e.message);
	}
}
