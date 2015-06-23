
int main(string[] args) {
	Gtk.init(ref args);
	var win = new Gtk.Window();
	win.destroy.connect(Gtk.main_quit);
	win.show_all();
	Gtk.main();
	return 0;
}

//https://wiki.archlinux.org/index.php/GTK%2B/Development
//https://wiki.archlinux.org/index.php/GTK%2B_%28%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87%29
//https://wiki.gnome.org/Projects/Vala/GTKSample#Basic_Sample
