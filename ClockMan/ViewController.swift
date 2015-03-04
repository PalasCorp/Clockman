//
//  ViewController.swift
//  ClockMan
//
//  Created by Matheus Manganeli de Macedo on 3/4/15.
//  Copyright (c) 2015 PalasCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gameLabel: UILabel!
    @IBOutlet var gameButton: UIButton!
    
    let gameBook = GameBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showGame() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        gameButton.tintColor = randomColor
        gameLabel.text = gameBook.randomGame()
    }

}

