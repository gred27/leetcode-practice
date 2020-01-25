//
//  main.swift
//  leetcode-practice
//
//  Created by 박지홍 on 2020/01/09.
//  Copyright © 2020 gred. All rights reserved.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let mt1 = t1 else {
            return t2
        }
        
        guard let mt2 = t2 else {
            return t1
        }
        
        mt1.val +=  mt2.val
        
        //left branch
        mt1.left = mergeTrees(mt1.left, mt2.left)
        
        //right branch
        mt1.right = mergeTrees(mt1.right, mt2.right)
        
        return mt1
    }
}

var mt1 = TreeNode(1)
var mt2 = TreeNode(2)
var mt3 = TreeNode(3)
var mt4 = TreeNode(4)
var mt5 = TreeNode(5)

mt1.left = mt2
mt2.left = mt4
mt1.right = mt3
mt3.left = mt5

//       1
//     2   3
//    4   5

//       6
//    7     8
// 11  12  9  10


var mt6 = TreeNode(6)
var mt7 = TreeNode(7)
var mt8 = TreeNode(8)
var mt9 = TreeNode(9)
var mt10 = TreeNode(10)
var mt11 = TreeNode(11)
var mt12 = TreeNode(12)

mt6.left = mt7
mt6.right = mt8
mt7.left = mt11
mt7.right = mt12
mt8.left = mt9
mt8.right = mt10

//      6
//   7     8
//11  12  9  10


var sol = Solution()
sol.mergeTrees(mt1, mt6)
