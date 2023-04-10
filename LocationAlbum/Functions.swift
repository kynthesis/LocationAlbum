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

let applicationDocumentsDirectory: URL = {
  let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
  return paths[0]
}()

let dataSaveFailedNotification = Notification.Name(rawValue: "DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
  print("*** Fatal Error: \(error)")
  NotificationCenter.default.post(name: dataSaveFailedNotification, object: nil)
}
