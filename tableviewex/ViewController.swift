//
//  ViewController.swift
//  tableviewex
//
//  Created by Benny on 2/5/18.
//  Copyright © 2018 Benny Souriyadeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        NSLog("numberOfRowsInSection called")
        
        return dwarves!.count
    }
    @IBOutlet weak var tblDwarves: UITableView!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let dwarf = dwarves![indexPath.row]
        
        NSLog("User selelcted row at \(dwarf.name)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        NSLog("look for indexPath \(indexPath)")
        let index = indexPath.row
        let dwarf = dwarves![index]
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = dwarf.name
        return cell
    }
    
    
    let dwarfRepo = DwarfRepository.shared
    var dwarves : [Dwarf]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dwarves = dwarfRepo.getDwarves()
        dwarves = UIApplication.shared.dwarfRepository.getDwarves() // return basetype uiapp delegate

        tblDwarves.dataSource = self
        tblDwarves.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// create dwarf object
//class Dwarf {
//    init(name : String) {
//        self.name = name
//    }
//    var name = ""
//}

//    let dwarves = ["Sneezy" , "Grumpy", "Dooey", "Doc", "Cranky", "DwarfDude", "OtherDwarfDude", "Thorin", "Bali", "Fifi", "Kali", "Dwarfli", "Chun-li", "Bombur", "Fred", "Bob", "Billy"]
//
//    let dwarves : [Dwarf] = [
//        Dwarf(name: "Sneezy"),
//        Dwarf(name: "Grumpy"),
//        Dwarf(name: "Dooey"),
//        Dwarf(name: "Doc"),
//        Dwarf(name: "Cranky"),
//        Dwarf(name: "DwarfDude"),
//        Dwarf(name: "OtherDude"),
//        Dwarf(name: "Thorin"),
//        Dwarf(name: "Bali"),
//        Dwarf(name: "Bali"),
//        Dwarf(name: "Fifi"),
//        Dwarf(name: "Kali"),
//        Dwarf(name: "Dwarfli"),
//        Dwarf(name: "Chun-li"),
//        Dwarf(name: "Bombur"),
//        Dwarf(name: "Fred"),
//        Dwarf(name: "Bob"),
//        Dwarf(name: "Billy")
//    ]

