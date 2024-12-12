import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioPage extends StatefulWidget {
  final int levelPage;

  const FormularioPage({super.key, required this.levelPage});

  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  bool _isObscure = true;

  String email = '';

  String? selectedCity;

  TypeErrorEmail get _typeError {
    if (email.isEmpty) return TypeErrorEmail.empty;

    if (email.length > 10) return TypeErrorEmail.veryLong;

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(email)) return TypeErrorEmail.invalid;

    return TypeErrorEmail.none;
  }

  final listCities = [
    'Medellin',
    'Bogota',
    'Cali',
    'Barranquilla',
    'Lima',
    'Buenos Aires',
    'Santiago',
    'Quito',
    'Caracas',
    'La Paz',
    'Montevideo',
    'Asuncion',
    'Brasilia',
    'Sao Paulo',
    'Rio de Janeiro',
    'Belo Horizonte',
    'Curitiba',
    'Porto Alegre',
    'Recife',
    'Fortaleza',
    'Salvador',
    'Rio'
  ];

  bool isAccept = false;

  String? selectedClass;

  DateTime? selectedDate;

  TimeOfDay? selectedHour;

  double sliderValue = 50;

  bool isProgramer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formularios ${widget.levelPage}'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return listCities.where((element) =>
                    element.toLowerCase().contains(textEditingValue.text));
              },
              onSelected: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                maxLength: 10,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  prefixIcon: Icon(Icons.person),
                  counterStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: _isObscure,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Ingrese su contraseña',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  hintText: 'Ingrese su edad',
                  prefixIcon: Icon(Icons.luggage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                  setState(() {});
                },
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Correo',
                  hintText: 'Ingrese su correo',
                  prefixIcon: const Icon(Icons.email),
                  errorText: switch (_typeError) {
                    TypeErrorEmail.invalid => 'Correo invalido',
                    TypeErrorEmail.empty => 'Correo vacio',
                    TypeErrorEmail.veryLong => 'Correo muy largo',
                    TypeErrorEmail.notHotmail => 'Correo no debe ser hotmail',
                    TypeErrorEmail.notGmail => 'Correo no debe ser gmail',
                    TypeErrorEmail.none => null,
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButtonFormField<String>(
                hint: const Text('Ciudades'),
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'Selecciona una ciudad',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => setState(() => selectedCity = value),
                items: listCities
                    .map((city) => DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        ))
                    .toList(),
              ),
            ),
            Text('Selected city: $selectedCity'),
            CheckboxListTile(
              title: const Text('Aceptar terminos y condiciones'),
              value: isAccept,
              onChanged: (value) {
                setState(() {
                  isAccept = value!;
                });
              },
            ),
            const Text('Soy Programador'),
            Checkbox(
              value: isProgramer,
              onChanged: (value) => setState(() => isProgramer = value!),
            ),
            RadioListTile<String>(
              title: const Text('Económica'),
              value: 'Económica',
              groupValue: selectedClass,
              onChanged: (value) => setState(() => selectedClass = value),
            ),
            RadioListTile<String>(
              title: const Text('Ejecutiva'),
              value: 'Ejecutiva',
              groupValue: selectedClass,
              onChanged: (value) => setState(() => selectedClass = value),
            ),
            RadioListTile<String>(
              title: const Text('Avanzado'),
              value: 'Avanzado',
              groupValue: selectedClass,
              onChanged: (value) => setState(() => selectedClass = value),
            ),
            Row(
              children: [
                const Text('Clase: '),
                Radio<String>(
                    value: 'Bajo',
                    activeColor: Colors.red,
                    groupValue: selectedClass,
                    onChanged: (value) =>
                        setState(() => selectedClass = value)),
              ],
            ),
            Text(selectedDate == null
                ? 'No has seleccionado una fecha'
                : 'Fecha seleccionada: ${selectedDate.toString()}'),
            ElevatedButton(
              onPressed: () async {
                final date = await showDatePicker(
                  // locale: const Locale('es', 'ES'),

                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2024, 12, 31),
                );

                setState(() {
                  selectedDate = date;
                });
              },
              child: const Text('Seleccionar fecha'),
            ),
            Text(selectedHour == null
                ? 'No has seleccionado una hora'
                : 'Hora seleccionada: ${selectedHour!.hour}:${selectedHour!.minute}'),
            ElevatedButton(
              onPressed: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {
                  selectedHour = time;
                });
              },
              child: const Text('Seleccionar hora'),
            ),
            const Text('SLIDER'),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 20,
              label: sliderValue.toStringAsFixed(0),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text('Valor del slider: $sliderValue'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

enum TypeErrorEmail {
  invalid,
  empty,
  veryLong,
  none,
  notHotmail,
  notGmail,
}
