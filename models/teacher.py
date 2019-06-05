
class Teacher:

    def __init__(self):
        pass

    def create_quiz(self, name):
        pass

    def create_question(
            self,
            quiz,
            question,
            answer,
            option_one,
            option_two,
            option_three,
            option_four):
        pass

    def reuse_question(self, question, quiz):
        pass

    def enroll_student_in_class(self, student, klass):
        pass

    # assuming we only have qiuz submissions of a single semester in the db
    def calculate_semester_grade(self, student):
        pass
