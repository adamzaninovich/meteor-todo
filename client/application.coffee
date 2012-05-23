Template.list.todos = -> Todos.find $or: [
  {completed: {$exists: false}}
  {completed: false}
]
Template.list.todos_completed = -> Todos.find completed: true
Template.list.todos_any = -> Template.list.todos().count() > 0
Template.list.todos_completed_count = -> Template.list.todos_completed().count()
Template.list.todos_completed_any = -> Template.list.todos_completed_count() > 0
Template.list.no_items = -> not (Template.list.todos_any() || Template.list.todos_completed_any())
Template.list.events = 
  'click #clear': (e) ->
    e.preventDefault()
    Todos.remove(completed: true)
  

Template.item.events = 
  'dblclick .item-name': (e) ->
    e.stopPropagation()
    e.preventDefault()
    if $('#new_todo_name').val() is ''
      name = @name
      Todos.remove(@_id)
      $('#new_todo_name').val(name)
  'click .complete': (e) ->
    e.preventDefault()
    Todos.update(@_id, $set: {completed: true})
  'click .uncomplete': (e) ->
    e.preventDefault()
    Todos.update(@_id, $set: {completed: false})
  'click .remove': (e) ->
    e.preventDefault()
    Todos.remove(@_id)
  

Template.item.completed_class = ->
  if this.completed then "completed" else ""

Template.add.events = 
  'submit #new_todo': (e) ->
    e.preventDefault()
    name = $('#new_todo_name').val()
    if name
      Todos.insert(name: name)
      $('#new_todo_name').val('')
    $('#new_todo_name').focus()
  

Template.quote.random_quote = -> Quotes.choose()
Template.quote.events = 
  'click': (e) ->
    current = $('blockquote')
    current.after(Template.quote())
    current.remove()