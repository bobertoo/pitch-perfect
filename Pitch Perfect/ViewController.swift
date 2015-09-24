//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Vinny Martinez on 9/24/15.
//  Copyright © 2015 bobmeow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Show text "recording in progress"
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        print("Recording in progress..")
    }

}

