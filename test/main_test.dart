import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_moviles_2/models/product.dart';

void main() {
  group('🟢 Product', () {
    test('Producto se crea con nombre no vacío', () {
      final product = Product(
        id: 'p1',
        nombre: 'Polo Azul',
        precio: 50.0,
        descuento: 5,
        descripcion: 'Polo básico azul',
        valoracion: 4.5,
        valoracionesTotal: 10,
        vendidos: 50,
        imagenes: ['img1.jpg'],
        colores: ['Azul'],
        colorImagenes: {'Azul': 'img1.jpg'},
        tallas: ['M'],
        descripcionTallas: 'Guía de tallas',
        comentarios: [],
        categoria: 'Polos',
        estado: 'disponible',
        stock: 5,
      );
      expect(product.nombre.isNotEmpty, true);
    });

    test('copyWith modifica nombre', () {
      final product = Product(
        id: 'p1',
        nombre: 'Polo Azul',
        precio: 50.0,
        descuento: 5,
        descripcion: 'Polo básico azul',
        valoracion: 4.5,
        valoracionesTotal: 10,
        vendidos: 50,
        imagenes: ['img1.jpg'],
        colores: ['Azul'],
        colorImagenes: {'Azul': 'img1.jpg'},
        tallas: ['M'],
        descripcionTallas: 'Guía de tallas',
        comentarios: [],
        categoria: 'Polos',
        estado: 'disponible',
        stock: 5,
      );

      final nuevo = product.copyWith(nombre: 'Polo Rojo');
      expect(nuevo.nombre, 'Polo Rojo');
    });
  });

  group('🟢 Validación de email básica', () {
    test('Email contiene @', () {
      String email = 'usuario@test.com';
      bool valido = email.contains('@');
      expect(valido, true);
    });
  });
}
