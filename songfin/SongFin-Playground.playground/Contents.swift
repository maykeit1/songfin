//: Playground - noun: a place where people can play

import UIKit

// A simple area to test and explain sections of the app.

// Lowercase letters represent flats and sharps :shrug
enum MusicalKeysFlat: Int {
	case C = 1, d, D, e, E, F, g, G, a, A, b, B
}

enum MusicalKeysSharp: Int {
    case C = 1, c, D, d, E, F, f, G, g, A, a, B
}

typealias MusicalNote = Int

let MusicalHalfSteps = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

let Whole = 2
let Half = 1

let MajorScale = [Whole, Whole, Half, Whole, Whole, Whole, Half]
let MajorChord = [1, 4, 7]
let CMajor = ["C", "D", "E", "F", "G", "A", "B"]
let FMajor = ["F", "G", "A", "Bb", "C", "D", "E"]

typealias Chord = [Int]

struct Song {
	let key: MusicalKeysSharp = .C
	
	func getMajorChordForKey(note: MusicalNote) -> Chord {
		let firstNote = MusicalHalfSteps[(note + MajorChord[0]) % MusicalHalfSteps.count]
		let secondNote = MusicalHalfSteps[(note + MajorChord[1]) % MusicalHalfSteps.count]
		let thirdNote = MusicalHalfSteps[(note + MajorChord[2]) % MusicalHalfSteps.count]
		
		return [firstNote, secondNote, thirdNote]
	}
}

Song().getMajorChordForKey(MusicalKeysSharp.E.rawValue)
