//
//  DwarfRepository.swift
//  tableviewex
//
//  Created by Benny on 2/5/18.
//  Copyright © 2018 Benny Souriyadeth. All rights reserved.
//

import Foundation


class Dwarf {
    init(name : String) {
        self.name = name
    }
    var name = ""
}

class DwarfRepository {
    static let shared = DwarfRepository()
    
    func getDwarves() -> [Dwarf] {
        return dwarves
    }
    func getDwarf(id: Int) -> Dwarf {
        return dwarves[id]
    }
    func killDwarf(id: Int) {
        // remove from array
    }
    func babyDwarf(name: String) {
        // add to array
    }
    
    func update(dwarf: Dwarf) {
        // send the update back to the server
    }
    
    
    private let dwarves : [Dwarf] = [
        Dwarf(name: "Sneezy"),
        Dwarf(name: "Grumpy"),
        Dwarf(name: "Dooey"),
        Dwarf(name: "Doc"),
        Dwarf(name: "Cranky"),
        Dwarf(name: "DwarfDude"),
        Dwarf(name: "OtherDude"),
        Dwarf(name: "Thorin"),
        Dwarf(name: "Bali"),
        Dwarf(name: "Bali"),
        Dwarf(name: "Fifi"),
        Dwarf(name: "Kali"),
        Dwarf(name: "Dwarfli"),
        Dwarf(name: "Chun-li"),
        Dwarf(name: "Bombur"),
        Dwarf(name: "Fred"),
        Dwarf(name: "Bob"),
        Dwarf(name: "Billy")
    ]

}
