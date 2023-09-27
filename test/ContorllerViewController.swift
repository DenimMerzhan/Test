//
//  ContorllerViewController.swift
//  test
//
//  Created by Деним Мержан on 22.09.23.
//

import UIKit

class ContorllerViewController: UIViewController {
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        indicator.startAnimating()
        getImage()
        print("bla bla")
    }
    
    func getImage(){
        guard let url = URL(string: "https://static.fotogora.ru/fotogora/wysiwyg/wp-content/uploads/2015/06/by-Plastikete.jpg") else {return}
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data)
                }
                
            }
        }
    }
}


