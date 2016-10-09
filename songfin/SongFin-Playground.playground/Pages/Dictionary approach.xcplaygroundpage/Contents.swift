//: Playground - noun: a place where people can play

import UIKit

// A simple area to test and explain sections of the app.

enum Keys: Int {
    case Ab = 1, A = 2, Bb = 3, B = 4, C = 5, Db = 6,
    D = 7, Eb = 8, E = 9, F = 11, Gb = 12
}

let Notes: [Int: String] = [
    1 : "G#/Ab", 2 : "A", 3 : "A#/Bb", 4: "B", 5 : "C", 6 : "C#/Db",
    7 : "D", 8 : "D#/Eb", 9 : "E", 10 : "F", 11 : "F#/Gb", 12 : "G"
]

typealias Note = Int
typealias Chord = [Note]

let HalfSteps = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

let Whole = 2
let Half = 1

let MajorScale = [Whole, Whole, Half, Whole, Whole, Whole, Half]
let MajorChord = [0, 3, 6]

let Chords = [MajorChord]

let CMajor = ["C", "D", "E", "F", "G", "A", "B"]
let FMajor = ["F", "G", "A", "Bb", "C", "D", "E"]

struct Song {
    func getChord(key: Keys, chordType: Chord = MajorChord) -> Chord {
        var chordNotes: [Int] = []
        
        for note in chordType {
            chordNotes.append(HalfSteps[(key.rawValue + note) % HalfSteps.count])
        }
		
		return chordNotes
	}
    
    func fromChordToString(chord: Chord) -> [String] {
        return chord.map({Notes[$0]!})
    }
}

let Cchord = Song().getChord(key: Keys.C)
Song().fromChordToString(chord: Cchord)
