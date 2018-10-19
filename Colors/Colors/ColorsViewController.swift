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
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
