import 'package:flutter/material.dart';
import '../widgets/custom_textformfield.dart';

class ArticuloScreen extends StatefulWidget {
  const ArticuloScreen({super.key});

  @override
  _ArticuloScreenState createState() => _ArticuloScreenState();
}

class _ArticuloScreenState extends State<ArticuloScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Map<String, dynamic> formValues = {
    'id': '001',
    'codigo': '',
    'descripcion': '',
    'precio': 0,
    'existencia': 0,
    'disponible': false,
    'tipo_descuento': '',
    'valor_descuento': 0,
    'categoria': '',
  };

  late final String _idPlaceholder = 'ID ' + formValues['id'];
  bool _checkDisponible = false;
  String tipoDescuento = 'Ninguno';
  num valorDescuento = 0;
  String categoria = '-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del Articulo'),
      ),
      // Por so los elementos no caben en la pantalla. Especialmente con teclado.
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                // Identificador del formulario. Necesario para validarlo.
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      enabled: false,
                      initialValue: _idPlaceholder,
                    ),
                    CustomTextFormField(
                        hintText: 'Código',
                        labelText: 'Código',
                        icon: Icons.qr_code_2_sharp,
                        propertyName: 'codigo',
                        propertyValues: formValues),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                        hintText: 'Descripción',
                        labelText: 'Descripción',
                        icon: Icons.description_outlined,
                        propertyName: 'descripcion',
                        propertyValues: formValues),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                        hintText: 'Precio',
                        labelText: 'Precio',
                        icon: Icons.monetization_on_sharp,
                        propertyName: 'precio',
                        propertyValues: formValues),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                        hintText: 'Existencia',
                        labelText: 'Existencia',
                        icon: Icons.format_list_numbered,
                        propertyName: 'existencia',
                        propertyValues: formValues),
                    const SizedBox(height: 10),
                    SwitchListTile(
                      title: const Text('Disponible'),
                      value: formValues['disponible'],
                      onChanged: (value) {
                        print('Checkbox value: $value');
                        _checkDisponible = value;
                        formValues['disponible'] = _checkDisponible;
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0, bottom: 8.0),
                          child: Text('Tipo de Descuento',
                              style: TextStyle(fontSize: 16)),
                        ),
                        RadioListTile(
                          title: const Text('Ninguno'),
                          value: 'Ninguno',
                          groupValue: tipoDescuento,
                          onChanged: (value) {
                            tipoDescuento = value ?? 'Ninguno';
                            formValues['tipo_descuento'] = tipoDescuento;
                            setState(() {});
                          },
                        ),
                        RadioListTile(
                          title: const Text('Promoción'),
                          value: 'Promoción',
                          groupValue: tipoDescuento,
                          onChanged: (value) {
                            tipoDescuento = value ?? 'Ninguno';
                            formValues['tipo_descuento'] = tipoDescuento;
                            setState(() {});
                          },
                        ),
                        RadioListTile(
                          title: const Text('Directo'),
                          value: 'Directo',
                          groupValue: tipoDescuento,
                          onChanged: (value) {
                            tipoDescuento = value ?? 'Ninguno';
                            formValues['tipo_descuento'] = tipoDescuento;
                            setState(() {});
                          },
                        ),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(value: 0, child: Text('0')),
                        DropdownMenuItem(value: 0.04, child: Text('0.04')),
                        DropdownMenuItem(value: 0.07, child: Text('0.07')),
                      ],
                      onChanged: (value) {
                        valorDescuento = value ?? 0;
                        formValues['valor_descuento'] = valorDescuento;
                      },
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(value: 'Ropa', child: Text('Ropa')),
                        DropdownMenuItem(
                            value: 'Accesorias', child: Text('Accesorias')),
                        DropdownMenuItem(
                            value: 'Zapatos', child: Text('Zapatos')),
                      ],
                      onChanged: (value) {
                        categoria = value ?? '-';
                        formValues['categoria'] = categoria;
                      },
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // FocusScope.of(context).requestFocus(FocusNode());
                        if (!formKey.currentState!.validate()) {
                          print('Formulario no validado!');
                          return;
                        }
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Enviar')),
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
