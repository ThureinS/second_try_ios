//
//  ViewController.swift
//  video_player_test
//
//  Created by Thurein Soe on 20/09/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
        private func playVideo(){
            guard let path = Bundle.main.path(forResource: "test1", ofType: "mp4")
            else {print("test1.mp4 is not found")
                return
            }
            let player = AVPlayer(url: URL(filePath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true){
                player.play()
            }
        }
}

