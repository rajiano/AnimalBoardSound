//
//  ViewController.swift
//  AnimalSoundBoards
//
//  Created by Oludemilade Raji on 4/12/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {

    @IBOutlet var volumeSlide: UISlider!
    var soundEffect1:AVAudioPlayer = AVAudioPlayer()
    var soundEffect2:AVAudioPlayer = AVAudioPlayer()
    var soundEffect3:AVAudioPlayer = AVAudioPlayer()
    var soundEffect4:AVAudioPlayer = AVAudioPlayer()
    var soundEffect5:AVAudioPlayer = AVAudioPlayer()
    var soundEffect6:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let catSound = Bundle.main.path(forResource: "Cat", ofType: ".wav")
        let dogSound = Bundle.main.path(forResource: "Dog", ofType: ".wav")
        let frogSound = Bundle.main.path(forResource: "Frog", ofType: ".wav")
        let horseSound = Bundle.main.path(forResource: "Horse", ofType: ".mp3")
        let pigSound = Bundle.main.path(forResource: "Pig", ofType: ".wav")
        let sheepSound = Bundle.main.path(forResource: "Sheep", ofType: ".wav")
        
        do {
            try soundEffect1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: catSound!))
            try soundEffect2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: dogSound!))
            try soundEffect3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: frogSound!))
            try soundEffect4 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: horseSound!))
            try soundEffect5 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: pigSound!))
            try soundEffect6 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: sheepSound!))
        }
        catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func volume(_ sender: Any) {
        soundEffect1.volume = volumeSlide.value
        soundEffect2.volume = volumeSlide.value
        soundEffect3.volume = volumeSlide.value
        soundEffect4.volume = volumeSlide.value
        soundEffect5.volume = volumeSlide.value
        soundEffect6.volume = volumeSlide.value
    }

    @IBAction func catButton(_ sender: Any) {
        soundEffect1.play()
    }
    @IBAction func dogButton(_ sender: Any) {
        soundEffect2.play()
    }
    @IBAction func frogButton(_ sender: Any) {
        soundEffect3.play()
    }
    @IBAction func sheepButton(_ sender: Any) {
        soundEffect6.play()
    }
    @IBAction func pigButton(_ sender: Any) {
        soundEffect5.play()
    }
    @IBAction func horseButton(_ sender: Any) {
        soundEffect4.play()
    }
}

