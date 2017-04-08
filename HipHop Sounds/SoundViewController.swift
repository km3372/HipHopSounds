//
//  SoundViewController.swift
//  HipHop Sounds
//
//  Created by kenneth moody on 4/7/17.
//  Copyright © 2017 iMoody Studios. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var audioRecorder :AVAudioRecorder?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRecorder()
    }
    
    func setupRecorder()  {
        do {
            //Create an audio session
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try session.overrideOutputAudioPort(.speaker)
            try session.setActive(true)
            
            // Create URL for the audio file
            
            let basePath :String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let patchComponents = [basePath, "audio.m4a"]
            let audioURL = NSURL.fileURL(withPathComponents: patchComponents)!
            
            //Create settings for the audio recorder
            
            var settings : [String]
            
            //Create AudioRecorder object
            audioRecorder = AVAudioRecorder(url: audioURL, settings: <#T##[String : Any]#>)
        } catch let error as NSError {
            print(error)
        }
        
    }
    
    @IBAction func recordTapped(_ sender: Any) {
    }
    
    @IBAction func playTapped(_ sender: Any) {
    }
    
    @IBAction func addTapped(_ sender: Any) {
    }
    
}
