# OpenGL-Example

This repository describes steps to work with OpenGL with Swift on Linux by
importing OpenGL/GLUT C headers as a Swift module with swift package manager. It
also serves as a playground for me to be able to learn OpenGL on Linux using
Swift.

## Building

A Makefile is provided for simplicity so you can just run:

> $ make

to compile all the provided targets. To run one, select an executable to run
under the generated `./.build/debug` folder.

## Dependencies

Ensure that you have OpenGL development headers:

> sudo apt install mesa-common-dev freeglut3-dev

### Tested On

Swift 4.0 Snapshot on Xubuntu 16.04
