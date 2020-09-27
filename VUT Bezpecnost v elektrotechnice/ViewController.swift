//
//  ViewController.swift
//  VUT Bezpečnost v elektrotechnice
//
//  Created by Alexander Shabelnikov on 02/09/2020.
//  Copyright © 2020 Alexander Shabelnikov. All rights reserved.
//

import UIKit
import SQLite

var randomOrder = true
var simulateExam = false

class ViewController: UIViewController {
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //long press
        
        
        //swipes
        let leftRecognizer = UISwipeGestureRecognizer(target: self, action:
        #selector(swipeMade(_:)))
           leftRecognizer.direction = .left
        let rightRecognizer = UISwipeGestureRecognizer(target: self, action:
        #selector(swipeMade(_:)))
           rightRecognizer.direction = .right
           self.view.addGestureRecognizer(leftRecognizer)
           self.view.addGestureRecognizer(rightRecognizer)
        
        
        
        
        setupQuestions()
        //shuffle questions
        questionModel.shuffle()
        updateView()
        copyDatabaseIfNeeded()
        
        
    }
    
    
    
    

    
    
    var questionNum = 0
    var questionCount = 0
    var a = 0
    var questionId = 0
    var answerId = 0
    var errors = 0
    var rebuiltAnswers = false



    
    
    
    func updateView() {
        //print(questionModel.count)
        questionCount = questionModel.count
        countLabel.text = (String(questionNum + 1) + "/" + String(questionCount))
//        questionLabel.text = questionModel.first?.text
        questionLabel.text = questionModel[questionNum].text
//        print(questionModel[1])
        getAnswers(question: questionNum)
    }
    
    func restart() {
        if randomOrder {
            questionModel.shuffle() }
        if simulateExam {
            setupExam()
            questionModel = examModel
            print(questionModel)
        }
        questionNum = 0;
        errors = 0
        errorLabel.text = ("Chyby: " + String(errors))
        for i in 0..<questionModel.count {
            questionModel[i].isAnswered = false
        }
        updateView()
        
    }
    
    func getAnswers(question: Int) {

        if !questionModel[question].isAnswered {
            questionModel[question].answers.shuffle()
            answerButtons[0].setTitle(questionModel[question].answers[0].text, for: UIControl.State.normal)
            answerButtons[1].setTitle(questionModel[question].answers[1].text, for: UIControl.State.normal)
            answerButtons[2].setTitle(questionModel[question].answers[2].text, for: UIControl.State.normal)

        } else {
            answerButtons[0].setTitle(questionModel[question].answers[0].text, for: UIControl.State.normal)
            answerButtons[1].setTitle(questionModel[question].answers[1].text, for: UIControl.State.normal)
            answerButtons[2].setTitle(questionModel[question].answers[2].text, for: UIControl.State.normal)
            if checkAnswer(q: question, a: questionModel[question].answer) {
                setCorrect(a: questionModel[question].answer)
            } else {
                setWrong(a: questionModel[question].answer)
            }
        }
        
        

        
    }
    


    
    
    //
    func nextQuestion() {
        if questionModel[questionNum].isAnswered {
            if (questionNum < questionModel.count - 1) {
                questionNum += 1
            }
            updateView()
        }
    }

    // view previous question
    func reverseQuestion() {
        if questionModel[questionNum].isAnswered {
            if (questionNum > 0) {
                questionNum -= 1
            }
            updateView()
        }

    }

    
    func checkAnswer(q: Int, a: Int) -> Bool {
        if questionModel[q].answers[a].isCorrect {
            print("correct answer")
            if !questionModel[q].isAnswered {
                setCorrect(a: a)
                questionModel[q].isAnswered = true
                questionModel[q].answer = a
            }

            return true
        }
        print("wrong answer")
        if !questionModel[q].isAnswered {
            errors += 1
            errorLabel.text = ("Chyby: " + String(errors))
            setWrong(a: a)
//            questionModel[q].isAnswered = true
            questionModel[q].answer = a
        }
        if simulateExam {
            if errors > 1 {
                fail()
            }
        }
        
        return false
    }
    
    func fail() {
        let alert = UIAlertController(title: "You failed", message: "You failed to pass exam mode. You can make only 1 mistake in 10 random questions.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func setCorrect(a: Int) {
        answerButtons[a].setTitle("✅ " + answerButtons[a].currentTitle!, for:
            UIControl.State.normal)
    }
    
    func setWrong(a: Int) {
        answerButtons[a].setTitle("❌ " + answerButtons[a].currentTitle!, for:
            UIControl.State.normal)
    }
    
    
    func copyDatabaseIfNeeded() {
        // Move database file from bundle to documents folder
        
        let fileManager = FileManager.default
        
        let documentsUrl = fileManager.urls(for: .documentDirectory,
                                                    in: .userDomainMask)
        
        guard documentsUrl.count != 0 else {
            return // Could not find documents URL
        }
        
        let finalDatabaseURL = documentsUrl.first!.appendingPathComponent("quiz.db")
    
        if !( (try? finalDatabaseURL.checkResourceIsReachable()) ?? false) {
            print("DB does not exist in documents folder")
            
            //let documentsURL = Bundle.main.resourceURL?.appendingPathComponent("quiz.db")
            let documentsURL = Bundle.main.resourceURL?.appendingPathComponent("sql.bundle/quiz.db")
            
            do {
                  try fileManager.copyItem(atPath: (documentsURL?.path)!, toPath: finalDatabaseURL.path)
                  } catch let error as NSError {
                    print("Couldn't copy file to final location! Error:\(error.description)")
            }

        } else {
            print("Database file found at path: \(finalDatabaseURL.path)")
        }
    
    }
    
    func addError() {
        
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
        ).first!
        
        let db = try! Connection("\(path)/quiz.db")
//        let db = try! Connection("\(path!)quiz.db")
        let errors = Table("errors")
        let id = Expression<Int>("id")
        let text = Expression<String>("text")
        let count = Expression<Int>("count")
        //let qError = errors.select(all).filter(Expression<Bool>)
        //let query = try? db!.prepare("SELECT * FROM errors WHERE id = \(questionModel[questionNum].id)")
        
//        let qError = errors.filter(id = questionModel[questionNum].id)
//        errors.select()
//        let count = try? db?.scalar(errors.where(id )
//        let count = try? db?.scalar(errors.filter(id == questionModel[questionNum].id).count)
//        let countAnswers = try db.scalar(errors.filter(id == questionModel[questionNum].id).count) {
//            print("query")
//        }
        print("answer id: \(questionModel[questionNum].id)")
//        var output = errors.where(id == questionModel[questionNum].id)
        let answerCount = try! db.scalar(errors.where(id == questionModel[questionNum].id).count)
        print("found answers: \(answerCount)")
        if answerCount == 0 {
            print("0 answers. adding to db")
            try! db.run(errors.insert(id <- questionModel[questionNum].id, text <- questionModel[questionNum].text, count <- 1))
        } else {
            print("counter++")
            try! db.run(errors.where(id == questionModel[questionNum].id).update(count++))
        }
        
//        print(output)
        //print(qError)
        //(id == questionModel[questionNum].id)
        
        
    }

    
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var questionLabel: UILabel!
    @IBAction func answerButton(_ sender: Any) {
        a = (sender as AnyObject).tag!
        print((sender as AnyObject).tag!)
        if (!checkAnswer(q: questionNum, a: a) && !questionModel[questionNum].isAnswered) {
            setupErrors(q: questionModel[questionNum])
            addError()
            questionModel[questionNum].isAnswered = true
            print(questionModel[questionNum])
        }
    }
    
    @IBAction func mistakesButton(_ sender: Any) {
        if errorsModel.count > 0 {
            simulateExam = false
            questionModel = errorsModel
            errorsModel.removeAll()
            restart()
        }
        
    }
    
    
    @IBAction func restartButton(_ sender: Any) {
        errorsModel.removeAll()
        questionModel = questionBackup
        restart()
    }
    
    @IBAction func rightGesture(sender: UISwipeGestureRecognizer) {
        print("Right")
    }
    
    @IBAction func leftGesture(sender: UISwipeGestureRecognizer) {
        print("Left")
    }
    
@IBAction func swipeMade(_ sender: UISwipeGestureRecognizer) {
   if sender.direction == .left {
      print("left swipe made")
      nextQuestion()
   }
   if sender.direction == .right {
      print("right swipe made")
      reverseQuestion()
   }
}

}

