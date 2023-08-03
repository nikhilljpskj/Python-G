# Generated by Django 3.2.19 on 2023-07-30 04:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('task_app', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='districts',
            old_name='branch1',
            new_name='district1',
        ),
        migrations.RenameField(
            model_name='districts',
            old_name='branch2',
            new_name='district2',
        ),
        migrations.RenameField(
            model_name='districts',
            old_name='branch3',
            new_name='district3',
        ),
        migrations.RenameField(
            model_name='districts',
            old_name='branch4',
            new_name='district4',
        ),
        migrations.AddField(
            model_name='districts',
            name='district5',
            field=models.CharField(default=2, max_length=250),
            preserve_default=False,
        ),
        migrations.CreateModel(
            name='Branches',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('branch1', models.CharField(max_length=250)),
                ('branch2', models.CharField(max_length=250)),
                ('branch3', models.CharField(max_length=250)),
                ('branch4', models.CharField(max_length=250)),
                ('district', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='task_app.districts')),
            ],
        ),
    ]