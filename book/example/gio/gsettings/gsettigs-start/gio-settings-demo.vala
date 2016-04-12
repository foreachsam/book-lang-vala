


// https://wiki.gnome.org/Projects/Vala/GSettingsSample
// https://developer.gnome.org/gio/stable/GSettings.html
// http://www.valadoc.org/#!api=gio-2.0/GLib.Settings
// https://developer.gnome.org/gio/stable/gsettings-tool.html

void main () {
    var settings = new Settings ("org.example.my-app");

    // Getting keys
    var greeting = settings.get_string ("greeting");
    var bottles = settings.get_int ("bottles-of-beer");
    var lighting = settings.get_boolean ("lighting");

    print ("%s\n", greeting);
    print ("%d bottles of beer on the wall\n", bottles);
    print ("Is the light switched on? %s\n", lighting ? "yes" : "no");

    // Change notification for any key in the schema
    settings.changed.connect ((key) => {
        print ("Key '%s' changed\n", key);
    });

    // Change notification for a single key
    settings.changed["greeting"].connect (() => {
        print ("New greeting: %s\n", settings.get_string ("greeting"));
    });

    // Setting keys
    settings.set_int ("bottles-of-beer", bottles - 1);
    settings.set_boolean ("lighting", !lighting);
    settings.set_string ("greeting", "hello, world");

    print ("Please start 'dconf-editor' and edit keys in /org/example/my-app/\n");

    print ("Or use 'gsettings' and edit keys in /org/example/my-app/\n");

    print ("Ex:\n");

    print ("$ gsettings list-recursively | grep example\n");

    /*
    print ("org.example.my-app bottles-of-beer 97\n");
    print ("org.example.my-app greeting 'hello, world'\n");
    print ("org.example.my-app lighting false\n");
    */

    print ("$ gsettings set org.example.my-app greeting 'hi'\n");

    print ("$ gsettings list-recursively | grep example\n");

    new MainLoop ().run ();
}
