//
//  Triangle.swift
//  AnimalGame
//
//  Created by shomokh aldosari on 22/07/1445 AH.
//

import Foundation
import SwiftUI

struct Triangle: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        path.move(to: CGPoint(x: 150, y: -50))
//           path.addLine(to: CGPoint(x: 70, y: 100))
//           path.addLine(to: CGPoint(x: 150, y: 100))
//           path.addLine(to: CGPoint(x: 150, y:0))
//
//        return path
//    }
    
    func path(in rect: CGRect) -> Path {
          return Path { p in
              p.move(to: .init(x: rect.minX, y: rect.maxY))
              p.addLine(to: .init(x: rect.minX, y: rect.minY))
              p.addLine(to: .init(x: rect.maxX, y: rect.midY))
              p.closeSubpath()
          }
      }
}

