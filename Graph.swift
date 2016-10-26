//
//  Graph.swift
//  LineGraph
//
//  Created by Colby Gatte on 10/26/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

import UIKit

class Graph: NSObject {
    var points: [CGPoint] = []
    var lineColor: UIColor!
    var backgroundColor: UIColor!
    var lineWidth: CGFloat!
    
    var circleSize: CGFloat!
    var circleFill: UIColor!
    var circleBorder: UIColor!
    
    func make(with frame: CGRect) -> GraphView {
        let graphView = GraphView(graphData: self, frame: frame)
        graphView.backgroundColor = backgroundColor
        
        return graphView
    }
}
