import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];

  downloadFilesConcurrently(urls).then((_) {
    print('All files downloaded successfully!');
  }).catchError((error) {
    print('Error occurred: $error');
  });
}

Future<void> downloadFilesConcurrently(List<String> urls) async {
  final futures = <Future>[];

  for (final url in urls) {
    futures.add(downloadFile(url));
  }

  await Future.wait(futures);
}

Future<void> downloadFile(String url) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == HttpStatus.ok) {
    final totalBytes = int.parse(response.headers['content-length'] ?? '0');
    final file = File(url.split('/').last);

    var receivedBytes = 0;

    response.stream.listen((List<int> chunk) {
      receivedBytes += chunk.length;
      final progress = ((receivedBytes / totalBytes) * 100).toStringAsFixed(2);
      stdout.write('\rDownloading: $progress%');
    }, onDone: () {
      stdout.writeln('\rDownloaded: ${file.path}');
    }, onError: (error) {
      print('Error downloading $url: $error');
    });

    await response.bodyBytes; // Ensure the response is fully consumed
    await file.writeAsBytes(response.bodyBytes);
  } else {
    throw Exception('Failed to download $url: ${response.statusCode}');
  }
}
// Ensure you have the http package added to your pubspec.yaml file:
//dependencies:
// http: ^0.13.3
