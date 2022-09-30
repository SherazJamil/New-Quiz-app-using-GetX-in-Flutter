class Questions {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Questions({required this.id, required this.question, required this.answer, required this.options});
}

const List data = [
  {
    "id": 1,
    "question":
    "Which is the national animal of Pakistan?",
    "options": ['Lion', 'Tiger', 'Markhor', 'Snake'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "When Egypt is Unified?",
    "options": ['2100 B.C', '3100 B.C', '2500 B.C', '1700 B.C'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "What is the fleet size of Pakistan International Airline",
    "options": ['10', '20', '30', '40'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What is the fleet size of Qatar Airways?",
    "options": ['234', '233', '134', '334'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "What is the fleet size of British Airways?",
    "options": ['188', '243', '320', '257'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "How many times Messi won Ballon d Or award?",
    "options": ['4', '7', '10', '5'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "When Pakistan won Champions trophy?",
    "options": ['2014', '2013', '2019', '2017'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Flutter is framework of?",
    "options": ['Google', 'Amazon', 'Microsoft', 'Apple'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "Flutter is especially used for?",
    "options": ['Web', 'Games', 'Mobile apps', 'Desktop'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Which programming language is used in FLutter?",
    "options": ['C#', 'Dart', 'Java', 'Swift'],
    "answer_index": 1,
  },
];