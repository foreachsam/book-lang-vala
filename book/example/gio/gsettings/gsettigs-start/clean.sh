#!/usr/bin/env bash

sudo rm /usr/share/glib-2.0/schemas/org.example.my-app.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
