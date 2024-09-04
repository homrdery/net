#! /usr/bin/python3
from enum import Enum, unique
ANNOTATIONS = "__annotations__"



@unique
class TypeRecord(Enum):
    Basa: int = 1
    WhoIs: int = 2
    IsAT: int = 3


class Base:
    def __init__(self, dict_or_obj=None, **kwargs):
        self.fields = {}
        for cls in type(self).mro():
            if hasattr(cls, ANNOTATIONS):
                self.fields = {**getattr(cls, ANNOTATIONS), **self.fields}
            if cls == Base:
                break

        for k, t in self.fields.items():
            try:
                if issubclass(type(dict_or_obj), dict):
                    v = dict_or_obj[k]
                else:
                    v = getattr(dict_or_obj, k)
                if issubclass(t, Base):
                    v = t(v)
                setattr(self, k, v)
            except (KeyError, AttributeError):
                pass

        for k in kwargs:
            if k in self.fields:
                t = self.fields[k]
                v = kwargs[k]
                if issubclass(t, Base):
                    v = t(v)
                setattr(self, k, v)

    @property
    def as_dict(self):
        result = {}
        for k in self.fields:
            if hasattr(self, k):
                v = getattr(self, k)
                if issubclass(type(v), Base):
                    result[k] = v.as_dict
                else:
                    result[k] = getattr(self, k)
        return result

    def as_dict_eq(self, other):
        # Сравнение имеет смысл только для потомков BaseRecord
        if not (isinstance(self, Base) and isinstance(other, Base)):
            return False

        def dict_loop(one: dict, two: dict):
            for k in {**one, **two}:
                if (k not in one) and (k not in two):
                    # Значения для k нет в обоих дампах, это нормально
                    continue
                if (k not in one) or (k not in two):
                    # Значение для k есть только в одном дампе
                    return False
                print(one[k], two[k])
                # проверка на совпадение типов значений в обоих классах
                if type(one[k]) != type(two[k]):
                    return False
                # если подсловари, рекурсивно проверяем
                if isinstance(one[k], dict) and not dict_loop(one[k], two[k]):
                    return False
                elif one[k] != two[k]:
                    return False
            return True

        return dict_loop(self.as_dict, other.as_dict)

    def __str__(self):
        return str(self.as_dict)

