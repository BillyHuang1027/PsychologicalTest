//
//  Question.swift
//  Qna
//
//  Created by 黃昌齊 on 2021/4/6.
//

import Foundation

struct Questions {
    //問題集合
    let questions = [
        Question(title: "跟年紀比你大的人說話比年紀小的說話自在", chooseYesDestination: 1, chooseNoDestination: 2),
        Question(title: "酒量較弱，容易喝醉", chooseYesDestination: 5, chooseNoDestination: 6),
        Question(title: "衣服中黑色系的衣服較多", chooseYesDestination: 6, chooseNoDestination: 3),
        Question(title: "從小就被取過各式各樣的外號", chooseYesDestination: 4, chooseNoDestination: 7),
        Question(title: "吃過泰國、印度尼西亞等地方的傳統料理", chooseYesDestination: 8, chooseNoDestination: 7),
        Question(title: "覺得一個人去旅行或出差很無趣", chooseYesDestination: 10, chooseNoDestination: 9),
        Question(title: "一定要參加同學會", chooseYesDestination: 12, chooseNoDestination: 11),
        Question(title: "經常丟三落四", chooseYesDestination: 11, chooseNoDestination: 10),
        Question(title: "對自己的髮型很重視", chooseYesDestination: 12, chooseNoDestination: 13),
        Question(title: "性格比較急躁", chooseYesDestination: 18, chooseNoDestination: 14),
        Question(title: "不管在正式活動還是朋友聚會時，都很常擔任「總務」角色", chooseYesDestination: 14, chooseNoDestination: 15),
        Question(title: "身高比一般人平均身高還要矮", chooseYesDestination: 10, chooseNoDestination: 16),
        Question(title: "拍照時經常比出V手勢", chooseYesDestination: 17, chooseNoDestination: 15),
        Question(title: "走路比別人慢", chooseYesDestination: 17, chooseNoDestination: 16),
        Question(title: "大部分講話時間比較長", chooseYesDestination: 19, chooseNoDestination: 15),
        //23 24 25 26 27 代表 A B C D E
        Question(title: "無倫何時總是保持桌面清潔", chooseYesDestination: 20, chooseNoDestination: 25),
        Question(title: "走性感路線", chooseYesDestination: 21, chooseNoDestination: 20),
        Question(title: "覺得要教別人做事是一件痛苦的事", chooseYesDestination: 22, chooseNoDestination: 21),
        Question(title: "時刻注重自己的外表", chooseYesDestination: 23, chooseNoDestination: 24),
        Question(title: "沒辦法長時間坐在一個地方", chooseYesDestination: 23, chooseNoDestination: 24),
        Question(title: "因為自己不太會說笑話而苦惱", chooseYesDestination: 25, chooseNoDestination: 26),
        Question(title: "聲音大", chooseYesDestination: 26, chooseNoDestination: 27),
        Question(title: "他人無法預測你的實際年齡", chooseYesDestination: 27, chooseNoDestination: 21)
    ]
    
    var questionNumber = 0
    //回傳問題字串
    func updateQuestionLabel() -> String {
        return questions[questionNumber].title
    }
    //按下 Yes Button 後會跳到的題目
    mutating func pressYesButton() -> Int {
        questionNumber = questions[questionNumber].chooseYesDestination
        return questionNumber
    }
    //按下 No Button 後會跳到的題目
    mutating func pressNoButton() -> Int {
        questionNumber = questions[questionNumber].chooseNoDestination
        return questionNumber
    }

}
