//
//  ColorsViewController.swift
//  Colors
//
//  Created by apple on 9/28/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let colors = [Color(name: "Red",UIColor:UIColor.red),
                  Color(name: "Orange",UIColor:UIColor.orange),
                  Color(name: "Yellow",UIColor:UIColor.yellow),
                  Color(name: "Green",UIColor:UIColor.green),
                  Color(name: "Blue",UIColor:UIColor.blue),
                  Color(name: "Purple",UIColor:UIColor.purple),]
    
    
    @IBOutlet weak var ColorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor=colors[indexPath.row].UIColor
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected=false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = ColorsTableView.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
    }

}
