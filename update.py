#!/usr/bin/env python3

import os
from datetime import date

BASE_URL = "https://github.com/luumut/luumucookbook/blob/master/"

def is_excluded(path):
    for e in [".git", "media"]:
        if e in path:
            return True

    return False


def remove_extension(filename):
    index = filename.find(".")
    return filename[0:index]


def create_links():
    # dict{ list[ tuple(name, link) ] }
    links = {}

    for root, subdirs, files in os.walk("."):

        if is_excluded(root) or root == ".":
            continue

        link_list = []

        for file in files:
            name = remove_extension(file).title()
            link = BASE_URL + root[2:] +  "/" + file
            link_list.append((name, link))

        link_list.sort(key=lambda item: item[0])
        links[root] = link_list

    return links


def get_range(lines):
    begin = -1
    end = len(lines) - 1

    for x in range(len(lines)):

        if "# Sisällysluettelo".lower() in lines[x].lower():
            begin = x
            break

    for x in range(begin+1, len(lines)):

        if "#" in lines[x]:
            end = x
            break


    return begin, end


def create_table_of_contents(data):
    updated = date.today().isoformat()
    contents = ["# Sisällysluettelo [päivitetty " + updated + "]"]

    for subdir in sorted(data.keys()):
        contents.append(f"- {subdir[2:].title()}")

        for pair in data[subdir]:
            contents.append(f"    - [{pair[0]}]({pair[1]})")

    return contents


def main():
    with open("README.md") as f:
        lines = f.read().splitlines()

    links = create_links()
    begin, end = get_range(lines)

    head = lines[0:begin]
    tail = lines[end+1:]

    contents = create_table_of_contents(links)
    new_lines = head + contents + tail

    with open("README.md", "w") as f:

        for line in new_lines:
            f.write(line + "\n")


main()

