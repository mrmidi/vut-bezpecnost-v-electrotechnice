//
//  ErrorsViewController.swift
//  VUT Bezpecnost v elektrotechnice
//
//  Created by Alexander Shabelnikov on 06/09/2020.
//  Copyright © 2020 Alexander Shabelnikov. All rights reserved.
//

import UIKit
import SQLite

class ErrorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
        ).first!
        
        let db = try! Connection("\(path)/quiz.db")
        
        //let db = try! Connection("\(path!)quiz.db")
        let errors = Table("errors")

//        let id = Expression<Int>("id")
//        let text = Expression<String>("text")
//        let count = Expression<Int>("count")
        let answerCount = try! db.scalar(errors.count)
        print(answerCount)
        return answerCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.numberOfLines=0
        let arr = makeArray();
        //var result =
        //cell.textLabel?.text = all[indexPath.row]
        
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func makeArray() -> [String] {
        var result = [String]()
        
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
        ).first!
        
        let db = try! Connection("\(path)/quiz.db")
        let errors = Table("errors")
        let count = Expression<Int>("count")
        let all = Array(try! db.prepare(errors.order(count.desc)))
//        let id = Expression<Int>("id")
        let text = Expression<String>("text")
        print(all)
        for error in all {
            let txt = try! error.get(text).dropLast()
            let cnt = try! error.get(count)
            let whole = txt + " (" + String(cnt) + ")"
            result.append(whole)
//            restult.append(contentsOf: whole)
        }
        return result
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        orderSwitch.setOn(randomOrder, animated: false)
        examSwitch.setOn(simulateExam, animated: false)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
        ).first!
        
        let db = try! Connection("\(path)/quiz.db")
        let errors = Table("errors")
        try! db.run(errors.delete())
    }
    
    
    @IBAction func setOrder(_ sender: Any) {
        if !randomOrder {
            randomOrder = true
        } else {
        randomOrder = false
        }
    }
    
    @IBAction func setExam(_ sender: Any) {
        if !simulateExam {
            simulateExam = true
        } else {
            simulateExam = false
        }
    }
    
    
    
    @IBOutlet weak var orderSwitch: UISwitch!
    @IBOutlet weak var examSwitch: UISwitch!
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
