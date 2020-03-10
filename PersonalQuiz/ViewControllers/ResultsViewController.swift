//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 09.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var avatar: UILabel!
    @IBOutlet var overview: UILabel!
    
    var answers: [Answer]!
    var yourAnimal: AnimalType!

    override func viewDidLoad() {
        super.viewDidLoad()
        getAnswer()
    }
    
    private func getAnswer() {
        yourAnimal = Dictionary(grouping: answers, by: { $0.type })
            .sorted(by: {$0.value.count > $1.value.count}).first?.key
        
        avatar.text = "Вы - \(yourAnimal.rawValue)"
        overview.text = yourAnimal.definition
    }
}
