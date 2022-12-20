//
//  Visit.swift
//  QuickCard
//
//  Created by Jonathan Wong on 4/18/20.
//  Copyright © 2020 Fatty Waffles Software. All rights reserved.
//

import Foundation

struct Visit: Identifiable {
  let id = UUID()
  var views: Int
  var events: Int
  var badges: Int
  var actions: Int
  var duration: Int
}
