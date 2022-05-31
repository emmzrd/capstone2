class Post {
  String id;
  String profileImageUrl;
  String timestamp;
  String position;
  String jobType;
  String salary;
  String company;
  String location;
  List jobDescription;
  String companyDescription;
  List review;




  Post({
    required this.id,
    required this.profileImageUrl,
    required this.timestamp,
    required this.position,
    required this.jobType,
    required this.salary,
    required this.company,
    required this.location,
    required this.jobDescription,
    required this.companyDescription,
    required this.review
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      timestamp: json['timestamp'] ?? '',
      position: json['position'] ?? '',
      jobType: json['jobType'] ?? '',
      salary: json['salary'] ?? '',
      company: json['company'] ?? '',
      location: json['location'] ?? '',
      jobDescription: json['jobDescription'] ?? '',
      companyDescription: json['companyDescription'] ?? '',
      review: json['review'] ?? '',

    );
  }
}
