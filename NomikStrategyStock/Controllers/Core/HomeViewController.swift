//
//  HomeViewController.swift
//  NomikStrategyStock
//
//  Created by Pinocchio on 2024/12/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Variables
    
    // MARK: - UI Components
    private let homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        return tableView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        view.addSubview(homeTableView)
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeTableView.frame = view.bounds
    }
    
    // MARK: - Functions
    
    // MARK: - Selectors
}
// MARK: - Extension
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
        return cell
    }
}
