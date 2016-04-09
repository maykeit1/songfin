//: Playground - noun: a place where people can play

import UIKit

// A simple area to test and explain sections of the app.

enum MusicalNote: Int {
	case C = 1, Db, D, Eb, E, F, Gb, G, Ab, A, Bb, B
}

typealias Chord = (MusicalNote, MusicalNote, MusicalNote)

struct Song {
	let key: MusicalNote = .C
	
	func getMajorChordFrom(note: MusicalNote) -> Chord {
		// If the first note is C
		let firstNote = note
		// Walk up the scale to the "3", but since we're walking half-steps it's 5 (minus 1 since C is 1)
		let secondNote = MusicalNote.init(rawValue: firstNote.rawValue.advancedBy(4))
		let thirdNote = MusicalNote.init(rawValue: firstNote.rawValue.advancedBy(7))
		
		return (firstNote, secondNote!, thirdNote!)
	}
}

Song().getMajorChordFrom(.C)