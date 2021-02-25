Bird.destroy_all
Tree.destroy_all

oak = Tree.create(name: "Oak")
maple = Tree.create(name: "Maple")

robin = Bird.create(name: "Robby", tree: oak)
bluejay = Bird.create(name: "Bluey", tree: oak)
owl = Bird.create(name: "Owly", tree: maple)