//
//  TodoCategoryMapper.swift
//  GroupIt
//
//  Created by Ankit Jasuja on 8/13/16.
//  Copyright © 2016 iOS Group 5. All rights reserved.
//

import UIKit
import Parse

class TodoCategoryMapper: NSObject {

    func toTodoCategoryDO(groupDO : GroupDO, todoCategory : TodoCategory) -> TodoCategoryDO {
        let todoCategoryDO = TodoCategoryDO()
        todoCategoryDO.objectId = todoCategory.id
        todoCategoryDO["todoName"] = todoCategory.todoName
//        todoCategoryDO["todoDescription"] = todoCategory.todoDescription
        todoCategoryDO["group"] = groupDO
        return todoCategoryDO
    }
    
    func toTodoCategory(todoCategoryDO : TodoCategoryDO) -> TodoCategory {
        var todoCategoryDictionary = Dictionary<String, AnyObject?>()
        todoCategoryDictionary["id"] = todoCategoryDO.objectId
        todoCategoryDictionary["todoName"] = todoCategoryDO.todoName
        todoCategoryDictionary["todoDescription"] = todoCategoryDO.todoDescription
        todoCategoryDictionary["group"] = todoCategoryDO.group
        let todoCategory = TodoCategory(todoCategoryDictionary: todoCategoryDictionary)
        return todoCategory
    }
}
