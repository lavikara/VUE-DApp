pragma solidity ^0.7.0;

contract TodoContract {
    uint public todoCount = 0;

    struct Todo {
        uint id;
        string todo;
        bool completed;
    }

    mapping(uint => Todo) public todos;

    constructor() {
        createTodo("Welcome please take a quick tour of your todo app");
    }

    function createTodo(string memory _todo) public returns(bool) {
        todoCount ++;
        todos[todoCount] = Todo(todoCount,_todo, false);
        return true;
    }
}