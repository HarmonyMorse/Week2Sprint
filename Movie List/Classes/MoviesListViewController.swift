//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Harm on 7/11/22.
//  Copyright © 2022 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate {
    
    var movies: [Movie] = [Movie(movieName: "Testing")]
    
    @IBOutlet weak var MoviesListTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MoviesListTableView.delegate = self
        MoviesListTableView.dataSource = self
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

extension MoviesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = MoviesListTableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Cell identifier is wrong or the cell is not of type MovieTableViewCell")}
        cell.movie = movies[indexPath.row]
        return cell
    }
}

extension MoviesListViewController: addMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        MoviesListTableView.reloadData()
    }
}
