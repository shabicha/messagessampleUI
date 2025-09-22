//
//  Previews.swift
//  messagessampleUI
//
//  Created by Shabicha Sureshkumar on 2025-09-21.
//
import SwiftUI

extension UIViewController {
    struct Preview: UIViewControllerRepresentable {
        let builder: () -> UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            builder()
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }

    func asPreview() -> some View {
        Preview { self }
    }
}


