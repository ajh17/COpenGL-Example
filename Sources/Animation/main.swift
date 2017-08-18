//
//  main.swift
//  Animation
//
//  Created by Akshay Hegde on 08/18/2017

// This sample code is a Swift port of the C version of "double.c" provided in "OpenGL
// Programming Guide" located at http://www.glprogramming.com/red/chapter01.html
import COpenGL

var spinAmount: GLfloat = 0.0

func initialize() {
    glClearColor(0.0, 0.0, 0.0, 0.0)
    glShadeModel(GLenum(GL_FLAT))
}

func onDisplay() {
    glClear(GLenum(GL_COLOR_BUFFER_BIT))
    glPushMatrix()
    glRotatef(spinAmount, 0.0, 0.0, 1.0)
    glColor3f(1.0, 1.0, 1.0)
    glRectf(-25.0, -25.0, 25.0, 25.0)
    glPopMatrix()
    glutSwapBuffers()
}

func onReshape(width: Int32, height: Int32) {
    glViewport(0, 0, GLsizei(width), GLsizei(height))
    glMatrixMode(GLenum(GL_PROJECTION))
    glLoadIdentity()
    glOrtho(-50.0, 50.0, -50.0, 50.0, -1.0, 1.0)
    glMatrixMode(GLenum(GL_MODELVIEW))
    glLoadIdentity()
}

func spinDisplay() {
    spinAmount = spinAmount < 360.0 ? spinAmount + 2.0 : 0
    glutPostRedisplay()
}

func onMouseClick(button: Int32, state: Int32, x: Int32, y: Int32) {
    switch button {
    case GLUT_LEFT_BUTTON:
        if state == GLenum(GLUT_DOWN) {
            glutIdleFunc(spinDisplay)
        }
    case GLUT_RIGHT_BUTTON:
        if state == GLenum(GLUT_DOWN) {
            glutIdleFunc(nil)
        }
    default:
        break
    }
}

var argumentCount = CommandLine.argc
glutInit(&argumentCount, CommandLine.unsafeArgv)
glutInitDisplayMode(GLenum(GLUT_DOUBLE | GLUT_RGB))
glutInitWindowSize(500, 500)
glutCreateWindow(CommandLine.unsafeArgv[1])

initialize()

glutDisplayFunc(onDisplay)
glutReshapeFunc(onReshape)
glutMouseFunc(onMouseClick)
glutMainLoop()
