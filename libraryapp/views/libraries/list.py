import sqlite3
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from libraryapp.models import Library
from ..connection import Connection


@login_required
def libraries_list(request):
    with sqlite3.connect(Connection.db_path) as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        select
            l.id,
            l.title,
            l.address
        from libraryapp_library l
        """)

        all_libraries = []
        dataset = db_cursor.fetchall()

        for row in dataset:
            lib_loc = Library()
            lib_loc.id = row["id"]
            lib_loc.title = row["title"]
            lib_loc.address = row["address"]

            all_libraries.append(lib_loc)

    template_name = 'libraries/list.html'
    context = {
        'all_libraries': all_libraries
    }

    return render(request, template_name, context)