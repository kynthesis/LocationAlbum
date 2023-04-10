//
//  Functions.swift
//  LocationAlbum
//
//  Created by Khoa D. Vo on 4/10/23.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
