//
//  ViewController.swift
//  audioPractice Take 2
//
//  Created by Andrew James Kinsey on 10/13/17.
//  Copyright © 2017 The Cabinents. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSong(song: String) {
        let path = Bundle.main.path(forResource: "\(song).mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
        }
        catch {
            let alert = UIAlertController(title: "The song title has not been found.", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        player?.play()
    }
    
    @IBAction func playSong2(_ sender: Any) {
        playSong(song: "marbles")
    }
    
    @IBAction func playSong(_ sender: Any) {
        playSong(song: "mozartSong")
    }
    
    @IBAction func pauseSong(_ sender: Any) {
        player?.pause()
    }
}

