# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # Crear objestos de productos
    product = Product.create([{ nombre: 'penicilina', existencia: 45, gondola:'P 2', p_costo: 800, p_minimo: 800, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Aspirina', existencia: 20, gondola:'A 4', p_costo: 500, p_minimo: 500, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Omeprazol', existencia: 60, gondola:'O 4', p_costo: 1200, p_minimo: 1200, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Lexotiroxina sódica', existencia: 45, gondola:'L 2', p_costo: 800, p_minimo: 800, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Ramipril', existencia: 10, gondola:'R 1', p_costo: 1800, p_minimo: 1800, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Amlodipina', existencia: 8, gondola:'A 3', p_costo: 300, p_minimo: 300, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Paracetamol', existencia: 72, gondola:'P 1', p_costo: 1000, p_minimo: 1000, p_venta: 1200,  total_costo: 50000, user: User.first  },
                              { nombre: 'Atorvastatina', existencia: 100, gondola:'A 1', p_costo: 1200, p_minimo: 1200, p_venta: 1200,  total_costo: 50000, user: User.first  }])
