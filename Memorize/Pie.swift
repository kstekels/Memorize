//
//  Pie.swift
//  Memorize
//
//  Created by karlis.stekels on 13/04/2021.
//

import SwiftUI

struct Pie: Shape {
    
    var startingAngle: Angle
    var endAngle: Angle
    var clockWise: Bool = false
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startingAngle.radians)),
            y: center.y + radius * sin(CGFloat(startingAngle.radians))
            )
        
        var p = Path()
        
        p.move(to: center)
        p.addLine(to: center)
        p.addArc(
            center: center,
            radius: radius,
            startAngle: startingAngle,
            endAngle: endAngle,
            clockwise: clockWise)
        p.addLine(to: center)
        return p
    }
    
}
