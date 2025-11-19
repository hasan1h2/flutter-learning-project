import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class BmiHomePage extends StatefulWidget {
  const BmiHomePage({super.key});

  @override
  State<BmiHomePage> createState() => _BmiHomePageState();
}

class _BmiHomePageState extends State<BmiHomePage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _weightCtrl = TextEditingController();
  final TextEditingController _heightCtrl = TextEditingController();

  double? _bmi;
  String _category = '';
  Color _resultColor = Colors.transparent;
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    _weightCtrl.dispose();
    _heightCtrl.dispose();
    _animController.dispose();
    super.dispose();
  }

  void _calculateBmi() {
    // Validate form inputs
    if (!_formKey.currentState!.validate()) return;

    // Parse values safely
    final weight = double.tryParse(_weightCtrl.text.trim()) ?? 0.0; // kg
    final heightCm = double.tryParse(_heightCtrl.text.trim()) ?? 0.0; // cm

    if (heightCm <= 0 || weight <= 0) {
      setState(() {
        _bmi = null;
        _category = 'Invalid input';
        _resultColor = Colors.grey;
      });
      return;
    }

    final heightM = heightCm / 100.0;
    final bmi = weight / (heightM * heightM);

    final result = double.parse(bmi.toStringAsFixed(1)); // one decimal place

    final categoryAndColor = _bmiCategoryAndColor(result);

    setState(() {
      _bmi = result;
      _category = categoryAndColor.item1;
      _resultColor = categoryAndColor.item2;
    });

    // Restart animation
    _animController.forward(from: 0.0);
  }

  // Returns tuple (category, color) using a small struct-like approach
  Tuple2<String, Color> _bmiCategoryAndColor(double bmi) {
    if (bmi < 18.5) {
      return Tuple2('Underweight', Colors.blueAccent);
    } else if (bmi < 25.0) {
      return Tuple2('Normal', Colors.green);
    } else if (bmi < 30.0) {
      return Tuple2('Overweight', Colors.orange);
    } else {
      return Tuple2('Obese', Colors.redAccent);
    }
  }

  void _clear() {
    _weightCtrl.clear();
    _heightCtrl.clear();
    setState(() {
      _bmi = null;
      _category = '';
      _resultColor = Colors.transparent;
    });
  }

  @override
  Widget build(BuildContext context) {
    final resultCardHeight = 140.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        elevation: 2,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(), // dismiss keyboard
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // Weight field
                        TextFormField(
                          controller: _weightCtrl,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Weight (kg)',
                            hintText: 'e.g. 68.5',
                            prefixIcon: Icon(Icons.monitor_weight),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your weight';
                            }
                            final parsed = double.tryParse(value.trim());
                            if (parsed == null || parsed <= 0) {
                              return 'Enter a valid weight';
                            }
                            if (parsed > 500) return 'Weight seems too large';
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        // Height field
                        TextFormField(
                          controller: _heightCtrl,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Height (cm)',
                            hintText: 'e.g. 172',
                            prefixIcon: Icon(Icons.height),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your height';
                            }
                            final parsed = double.tryParse(value.trim());
                            if (parsed == null || parsed <= 0) {
                              return 'Enter a valid height';
                            }
                            if (parsed > 300) return 'Height seems too large';
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: _calculateBmi,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 14),
                                  child: Text('Calculate BMI', style: TextStyle(fontSize: 16)),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            OutlinedButton(
                              onPressed: _clear,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 6),
                                child: Text('Clear'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Animated Result Card
              AnimatedBuilder(
                animation: _animController,
                builder: (context, child) {
                  final fade = CurvedAnimation(parent: _animController, curve: Curves.easeOut);
                  return Opacity(
                    opacity: fade.value,
                    child: child,
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: resultCardHeight,
                  decoration: BoxDecoration(
                    color: _resultColor.withOpacity(_bmi == null ? 0.08 : 0.12),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _resultColor.withOpacity(0.25),
                      width: 1.2,
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: _bmi == null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Your BMI result will appear here',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 6),
                      Text('Enter weight and height, then tap Calculate.',
                          style: TextStyle(fontSize: 13, color: Colors.black54)),
                    ],
                  )
                      : Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('BMI',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 6),
                            Text(
                              _bmi!.toStringAsFixed(1),
                              style: const TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              _category,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // A simple indicator bar that fills according to BMI (not scientific scale)
                            Container(
                              height: 14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: [
                                  FractionallySizedBox(
                                    alignment: Alignment.centerLeft,
                                    widthFactor: (_bmi! / 40.0).clamp(0.02, 1.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _resultColor,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              _bmi! < 18.5
                                  ? 'Eat more nutritious food'
                                  : _bmi! < 25
                                  ? 'Great! Keep it up'
                                  : _bmi! < 30
                                  ? 'Try to lose a little weight'
                                  : 'Consider consulting a doctor',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // Quick reference legend
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('BMI Categories (WHO)', style: TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 8),
                      _buildLegendRow('Underweight', '< 18.5', Colors.blueAccent),
                      _buildLegendRow('Normal', '18.5 - 24.9', Colors.green),
                      _buildLegendRow('Overweight', '25.0 - 29.9', Colors.orange),
                      _buildLegendRow('Obese', '≥ 30.0', Colors.redAccent),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),
              const Text(
                'Note: BMI is a simple screening tool and does not distinguish between muscle and fat. For personalized advice consult a healthcare professional.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendRow(String title, String range, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(width: 12, height: 12, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3))),
          const SizedBox(width: 10),
          Expanded(child: Text(title)),
          Text(range, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

/// Simple Tuple2 class to return two values without extra packages.
class Tuple2<T1, T2> {
  final T1 item1;
  final T2 item2;
  Tuple2(this.item1, this.item2);
}
