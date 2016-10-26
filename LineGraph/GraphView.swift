//
//  GraphView.swift
//  LineGraph
//
//  Created by Colby Gatte on 10/26/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

import UIKit

class GraphView: UIView {
    var graphData: Graph!
    var line: UIBezierPath!
    
    init(graphData: Graph, frame: CGRect) {
        super.init(frame: frame)
        self.graphData = graphData
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ rect: CGRect) {
        
        line = UIBezierPath()
        
        for (index, point) in graphData.points.enumerated() {
            // shortcut for assigning the points on the graph
            let x = point.x
            let y = frame.height - point.y
            
            // circle
            let circle = UIBezierPath(ovalIn: CGRect(x: x - graphData.circleSize / 2, y: y - graphData.circleSize / 2, width: graphData.circleSize, height: graphData.circleSize
            ))
            
            graphData.circleFill.setFill()
            graphData.circleBorder.setStroke()
            circle.stroke()
            circle.fill()
            circle.close()
            
            // line
            graphData.lineColor.setStroke()
            line.lineWidth = graphData.lineWidth
            if index == 0 {
                line.move(to: CGPoint(x: x, y: y))
            } else {
                line.addLine(to: CGPoint(x: x, y: y))
                line.stroke()
            }
            
        }
    }
}
