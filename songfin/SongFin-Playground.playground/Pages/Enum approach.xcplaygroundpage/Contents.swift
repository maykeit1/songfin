//: [Previous](@previous)

import Foundation

/*
    Use an enum with a sub-enum to represent the notes and whether they are sharp, flat, or natural.
 */

enum Notes {
    enum Accidental: Int {
        case Natural = -1
        case Flat = 0
        case Sharp = 1
    }
    
    case A(accidental: Accidental)
    case B(accidental: Accidental)
    case C(accidental: Accidental)
    case D(accidental: Accidental)
    case E(accidental: Accidental)
    case F(accidental: Accidental)
    case G(accidental: Accidental)
}

Notes.A(accidental: .Natural)

//: [Next](@next)
