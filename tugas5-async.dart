// 3 jenis status
// 1. uncompleted
// 2. completed -> data sukses
// 3. completed -> data tidak sukses (error)

// async -> seperti proses sync
void main() async {
  // await getOrder(15).then((String status) {
  //   // tidak menjalankan yang data sukses (completed)
  //   print("Bisa Dijalankan");
  //   print(status);
  // }).catchError((error){
  //   print("Ini yang dijalankan");
  //   print(error);
  // });

  try {
    String status = await getOrder(6);
    print("Bisa Dijalankan");
    print(status);
  } catch (error) {
    print("Ini yang dijalankan");
    print(error);
  } finally {
    pertama();
    kedua();
  }
}

void pertama(){
  print("Data Barang Pertama");
}

void kedua(){
  print("Data Barang Kedua");
}

Future<String> getOrder(int beli) {
  int stokBarang = 8;

  return Future.delayed(Duration(seconds: 3),(){
    if (stokBarang > beli) {
      //berhasil membeli stokBarang
      return "Berhasil membeli barang sebanyak $beli";
    } else {
      //stok kurang dan tidak berhasil (error)
      return "Tidak berhasil membeli barang karena stok yang kurang";
    }
  });
}