#!/usr/bin/env bash

# https://wiki.gnome.org/Projects/Vala/GSettingsSample

cat > org.example.my-app.gschema.xml <<EOF
<schemalist>
	<schema id="org.example.my-app" path="/org/example/my-app/" gettext-domain="my-app">

		<key name="greeting" type="s">
			<default l10n="messages">"Hello, earthlings"</default>
			<summary>A greeting</summary>
			<description>
				Greeting of the invading martians
			</description>
		</key>

		<key name="bottles-of-beer" type="i">
			<default>99</default>
			<summary>Bottles of beer</summary>
			<description>
				Number of bottles of beer on the wall
			</description>
		</key>

		<key name="lighting" type="b">
			<default>false</default>
			<summary>Is the light switched on?</summary>
			<description>
				State of an imaginary light switch.
			</description>
		</key>

	</schema>
</schemalist>

EOF

sudo cp org.example.my-app.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
