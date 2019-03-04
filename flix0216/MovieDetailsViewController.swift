//
//  MovieDetailsViewController.swift
//  flix0216
//
//  Created by ellehcim on 3/3/19.
//  Copyright © 2019 ellehcim. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(movie["title"])
    
        titleLabel.text = movie["title"] as? String;
        titleLabel.sizeToFit();
        synopsisLabel.text = movie["overview"] as? String;
        synopsisLabel.sizeToFit();
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w185";
        let posterPath = movie["poster_path"] as! String;
        let posterUrl = URL(string: baseUrl + posterPath);
        posterView.af_setImage(withURL: posterUrl!);
        
        posterView.layer.cornerRadius = 10.0;
        
        let backdropPath = movie["backdrop_path"] as! String;
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w1280" + backdropPath);
        backdropView.af_setImage(withURL: backdropUrl!)
    
    }
    
    

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
