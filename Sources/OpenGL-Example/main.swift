//
//  main.swift
//  OpenGL-Example
//
//  Created by Akshay Hegde on 08/17/2017

// This sample code is a Swift port of the C version of "hello.c" provided in "OpenGL
// Programming Guide" located at http://www.glprogramming.com/red/chapter01.html
import COpenGL

func display() {
    glClear(GLenum(GL_COLOR_BUFFER_BIT))

    glColor3f(1.0, 1.0, 1.0)

    glBegin(GLenum(GL_POLYGON))
    glVertex3f(0.25, 0.25, 0.0)
    glVertex3f(0.75, 0.25, 0.0)
    glVertex3f(0.75, 0.75, 0.0)
    glVertex3f(0.25, 0.75, 0.0)
    glEnd()

    glFlush()
}

func initialize() {
    glClearColor(0.0, 0.0, 0.0, 0.0)
    glMatrixMode(GLenum(GL_PROJECTION))
    glLoadIdentity()
    glOrtho(0.0, 1.0, 0.0, 1.0, -1.0, 1.0)
}

var argumentCount = CommandLine.argc
glutInit(&argumentCount, CommandLine.unsafeArgv)
glutInitDisplayMode(GLenum(GLUT_SINGLE | GLUT_RGB))
glutInitWindowSize(500, 500)
glutCreateWindow("Basic COpenGL calls with Swift")

initialize()
glutDisplayFunc(display)
glutMainLoop()
