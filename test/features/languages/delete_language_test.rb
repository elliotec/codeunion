require "test_helper"

visit languages_path
name = languages(:ruby).name
page.find("tbody tr:last")
