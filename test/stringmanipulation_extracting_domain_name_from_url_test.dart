import 'package:stringmanipulation_extracting_domain_name_from_url/stringmanipulation_extracting_domain_name_from_url.dart';
import 'package:test/test.dart';

void main() {
  group('Domain Name Extraction Tests', () {
    test('Extract domain from URL with http', () {
      expect(
          extractDomain('http://www.example.com/path'), equals('example.com'));
    });

    test('Extract domain from URL with https', () {
      expect(extractDomain('https://example.com'), equals('example.com'));
    });

    test('Handle URL without www', () {
      expect(extractDomain('https://example.com/path'), equals('example.com'));
    });

    test('Handle URL with subdomains', () {
      expect(extractDomain('https://subdomain.example.com'),
          equals('example.com'));
    });
  });
}
