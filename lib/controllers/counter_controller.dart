import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  void increment() => count + 1;
  void decrement() => count - 1;
  void reset() => count.value = 0;

  @override
  void onInit() {
    // workers adalah sebuah fungsi yang akan menjalankan sesuatu ketika ada perubahan pada variabel yang diinginkan
    // Setiap ada perubahan pada count, maka akan menjalankan print atau ingin melakukan sesuatu pada count
    ever(count, (_) => print('jalankan setiap kali count berubah'));

    // Setiap ada perubahan pada variabel yang banyak berbentuk list, maka akan menjalankan print atau ingin melakukan sesuatu pada count
    everAll([count, data], (_) => print('jalankan setiap kali count berubah'));
    print('onInit');

    // Setiap ada perubahan pada count, maka akan menjalankan print atau ingin melakukan sesuatu pada count hanya sekali saja
    once(count, (_) => print('jalankan sekali saja ketika count berubah'));

    // Setiap ada perubahan pada count, maka akan menjalankan print atau ingin melakukan sesuatu pada count setelah 4 detik
    // Bagus untuk status mengetik pada whatsapp & fitur search
    debounce(count,
        (_) => print('jalankan setiap kali count berubah setelah 1 detik'),
        time: const Duration(seconds: 4));
    super.onInit();

    // Setiap ada perubahan pada count, maka akan menjalankan print atau ingin melakukan sesuatu pada count setiap 4 detik
    // Bagus untuk security, misalnya ingin melakukan refresh token setiap 4 detik
    interval(count, (_) => print('jalankan setiap 1 detik'),
        time: const Duration(seconds: 4));
  }
}

class CounterControllerV2 extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
