//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Oti Oritsejafor on 8/8/18.
//  Copyright © 2018 Magloboid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecording: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false;
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppearCalled")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecording.isEnabled = true;
        recordButton.isEnabled = false;
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecording.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
    
    
}

