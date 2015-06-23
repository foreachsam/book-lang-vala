
// https://wiki.gnome.org/Projects/Vala/BasicSample

void main() {
	try {
		string file = "data.txt";
		string content = "This is Test!\n中文\n";

		FileUtils.set_contents(file, content);

	} catch (FileError e) {
		stderr.printf("%s\n", e.message);
	}
}
