# Generated by Django 3.2.1 on 2023-02-10 09:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0008_bookinstance_borrower'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='bookinstance',
            options={'ordering': ['due_back'], 'permissions': (('can_mark_returned', 'Set book as returned'),)},
        ),
    ]
