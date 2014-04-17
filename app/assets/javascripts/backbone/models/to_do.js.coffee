class BbToDoV.Models.ToDo extends Backbone.Model
  paramRoot: 'to_do'

  defaults:

class BbToDoV.Collections.ToDosCollection extends Backbone.Collection
  model: BbToDoV.Models.ToDo
  url: '/to_dos'
