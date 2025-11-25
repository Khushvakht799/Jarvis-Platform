import asyncio
import re

class SimplePythonGenerator:
    def __init__(self):
        self.templates = {
            'calculator': self.calculator_code,
            'data_analysis': self.data_analysis_code,
            'file_processor': self.file_processor_code
        }

    def detect_request_type(self, query):
        query_lower = query.lower()
        if any(word in query_lower for word in ['калькулятор', 'счет', 'математик']):
            return 'calculator'
        elif any(word in query_lower for word in ['данн', 'анализ', 'статистик']):
            return 'data_analysis'
        elif any(word in query_lower for word in ['файл', 'сохран', 'чтение']):
            return 'file_processor'
        else:
            return 'general'

    def generate_code(self, query):
        code_type = self.detect_request_type(query)
        if code_type in self.templates:
            return self.templates[code_type]()
        else:
            return self.general_python_code()

    def calculator_code(self):
        return "print('Простой калькулятор')"

    def data_analysis_code(self):
        return "print('Анализ данных')"

    def file_processor_code(self):
        return "print('Обработка файлов')"

    def general_python_code(self):
        return "print('Универсальная программа')"

generator = SimplePythonGenerator()
print("Генератор кода готов")