//
//  AnswerViewController.swift
//  Qna
//
//  Created by 黃昌齊 on 2021/4/6.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var num: Int! //用來接收QuestionViewController資料
    let answer = Answer()
    @IBOutlet weak var answerTitle: UILabel!
    @IBOutlet weak var answerLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    
    @IBAction func returnQuestionController(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateLabel() {
        
        switch num {
        case 23:
            answerTitle.text = "A型：第一印象感覺很優秀的類型"
            answerLabel.text = answer.answer["A"]
        case 24:
            answerTitle.text = "B型：無倫何時都是開心果、小可愛的類型"
            answerLabel.text = answer.answer["B"]
        case 25:
            answerTitle.text = "C型：不知為何讓人覺得挑惕的類型"
            answerLabel.text = answer.answer["C"]
        case 26:
            answerTitle.text = "D型：令人感到愉快、性格爽快的類型"
            answerLabel.text = answer.answer["D"]
        case 27:
            answerTitle.text = "E型：神神秘秘的類型"
            answerLabel.text = answer.answer["E"]
        default:
            break
        }
    }

}
