# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ubicacion.create(provincia: "Heredia", canton: "Flores", distrito: "San Joaquin")
Ubicacion.create(provincia: "San José", canton: "Montes De Oca", distrito: "San Pedro")
Ubicacion.create(provincia: "Heredia", canton: "San Rafael", distrito: "Los Angeles")
Ubicacion.create(provincia: "Heredia", canton: "Santo Domingo", distrito: "San Miguel")
TipoComida.create(tipo_comida: "Mexicana")
TipoComida.create(tipo_comida: "Cubana")
TipoComida.create(tipo_comida: "Tipica")
TipoComida.create(tipo_comida: "Pizzeria")
TipoProducto.create(tipo_producto: "Bebidas")
TipoProducto.create(tipo_producto: "Postre")
TipoProducto.create(tipo_producto: "Almuerzo")
