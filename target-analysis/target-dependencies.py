#!/usr/bin/env python3
import os
import xml.etree.ElementTree as ET
from sys import argv

class Task:
    def __init__(self, name, dependencies):
        self.name = name
        self.dependencies = Task.parseDependencies(dependencies)

    def __repr__(self):
        return "{} =dep=> {}".format(self.name, self.dependencies)

    @staticmethod
    def parseDependencies(dependencies):
        return [] if not dependencies else dependencies.split(",")


build_xml = argv[1]
output = argv[2]

tree = ET.parse(build_xml)
root = tree.getroot()
tasks = []
for target in root.iter("target"):
    name = target.attrib["name"]
    dependencies = None
    try:
        dependencies = target.attrib["depends"]
    except:
        pass
    tasks.append(Task(name, dependencies))

graphiz_options = ["graph [ratio=\"compress\", resolution=300, size=\"2!\"]",
                   "node [shape=rect]"]

with open(output, "w") as f:
    f.write("digraph G {\n")
    f.write("%s\n" % ";\n".join(graphiz_options))
    for t in tasks:
        deps = " ".join(["\"%s\"" % d for d in t.dependencies])
        f.write("\"%s\" -> {%s};\n" % (t.name, deps))
    f.write("}\n")

