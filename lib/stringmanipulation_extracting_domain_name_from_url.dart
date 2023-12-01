/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_extracting_domain_name_from_url_base.dart';

/*
Practice Question 3: Extracting Domain Name from URL

Task:

Write a function to extract the domain name from a given URL. 
For example, given the URL https://www.example.com/path, the function should return example.com.
 */

String extractDomain(String url) {
  final urlSplit = "${url.split('.com')[0]}.com".split('://')[1].split('.');
  return urlSplit.sublist(urlSplit.length - 2).join('.');
}