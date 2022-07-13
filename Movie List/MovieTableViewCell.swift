//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Harm on 7/12/22.
//  Copyright © 2022 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListViewDelegate {
    func seenIsChanged(_ senderThing: Movie?)
}


class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButtonText: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieListViewDelegate?
    
    
//    var MovieTableViewCell.delegate = self
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func seenTapped(_ sender: UIButton) {
        if let movie = movie {
            delegate?.seenIsChanged(movie)
        }
//        if let buttonTitle = sender.title(for: .normal) {
//            if buttonTitle == "Not Seen" {
//                seenButtonText.setTitle("Seen", for: .normal)
//            } else {
//                seenButtonText.setTitle("Not Seen", for: .normal)
//            }
//        }
//        updateViews()
        
//        if var movie = movie {
//            if movie.seen == true {
//                movie.seen = false
//            } else {
//                movie.seen = true
//            }
//        }
//        updateViews()
    }
    
    private func updateViews() {
        if let movie = movie {
            movieNameLabel.text = movie.movieName
            if movie.seen == true {
                seenButtonText.setTitle("Seen", for: .normal)
            } else {
                seenButtonText.setTitle("Not Seen", for: .normal)
            }
        }
    }
}
