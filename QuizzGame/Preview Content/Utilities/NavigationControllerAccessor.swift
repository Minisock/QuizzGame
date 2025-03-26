//
//  NavigationControllerAccessor.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

// For handling back-swipe
struct NavigationControllerAccessor: UIViewControllerRepresentable {
	@Binding var navController: UINavigationController?
	
	func makeUIViewController(context: Context) -> UIViewController {
		let controller = UIViewController()
		DispatchQueue.main.async {
			self.navController = controller.navigationController
		}
		return controller
	}
	
	func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
