//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Vinny Martinez on 9/24/15.
//  Copyright © 2015 bobmeow. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")  {
            let filePathURL = NSURL.fileURLWithPath(filePath)
            do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: filePathURL)    // This is different for Swift 2!
                audioPlayer.enableRate = true
            }
            catch let error as NSError  {
                print(error.localizedDescription)
            }
        } else {
            print("There was a problem with the path.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   
    
    @IBAction func playSlowAudio(sender: UIButton) {
        //TODO: Play slow sound
        audioPlayer.stop()
        audioPlayer.rate=0.5;
        audioPlayer.play();
        print("playing at snail speed")
    }
    @IBAction func playFastAudio(sender: UIButton) {
        //TODO: Play fast sound
        audioPlayer.stop()
        audioPlayer.rate=2;
        audioPlayer.play();
        print("playing at hare speed")
    }
    @IBAction func stopAudio(sender: UIButton) {
        //TODO: Stop and reset audio
        audioPlayer.stop()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
