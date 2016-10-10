//: [Previous](@previous)

import Foundation

/*
    Use an enum with a sub-enum to represent the notes and whether they are sharp, flat, or natural.
 */

enum Notes {
    enum HalfStep: Int {
        case A = 1
        case B = 3
        case C = 4
        case D = 6
        case E = 8
        case F = 9
        case G = 11
    }
    
    enum Accidental: Int {
        case Flat = -1
        case Natural = 0
        case Sharp = 1
    }
    
    case A(halfStep: HalfStep, accidental: Accidental)
    case B(accidental: Accidental)
    case C(accidental: Accidental)
    case D(accidental: Accidental)
    case E(accidental: Accidental)
    case F(accidental: Accidental)
    case G(accidental: Accidental)
}

Notes.A(halfStep: .A, accidental: .Natural)

//: [Next](@next)
