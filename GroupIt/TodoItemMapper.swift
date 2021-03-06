//
//  TodoItemMapper.swift
//  GroupIt
//
//  Created by Ankit Jasuja on 8/13/16.
//  Copyright © 2016 iOS Group 5. All rights reserved.
//

import UIKit
import Parse

class TodoItemMapper: NSObject {
    
    func toTodoItemDO(todoCategoryDO : TodoCategoryDO, todoItem : TodoItem) -> TodoItemDO {
        let todoItemDO = TodoItemDO()
        todoItemDO.objectId = todoItem.id
        todoItemDO["todoItemName"] = todoItem.todoItemName
        todoItemDO["completed"] = todoItem.completed
        todoItemDO["category"] = todoCategoryDO
        return todoItemDO
    }

    func toTodoItem(todoItemDO : TodoItemDO) -> TodoItem {
        var todoItemDictionary = Dictionary<String, AnyObject?>()
        todoItemDictionary["id"] = todoItemDO.objectId
        todoItemDictionary["todoItemName"] = todoItemDO["todoItemName"]
        todoItemDictionary["completed"] = todoItemDO["completed"]
        todoItemDictionary["category"] = todoItemDO["category"]
        let todoItem = TodoItem(todoItemDictionary: todoItemDictionary)
        return todoItem
    }
}
