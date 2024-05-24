from django.shortcuts import render
from django.views.generic import ListView, DetailView
from .models import Book

# Create your views here.
class BookListView(ListView):
    model = Book
    context_object_name = "book_list"
    template_name = "Books/book_list.html"


class BookDetailView(DetailView):
    model = Book
    context_object_name = "book"
    template_name = "Books/book_detail.html"