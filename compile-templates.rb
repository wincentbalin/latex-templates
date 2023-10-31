#!/usr/bin/env ruby

BASE_TEX = File.read("./common/base.tex")

def indent(str)
  indented = ""
  str.each_line do |l|
    indented += "\t" + l
  end
  indented
end

def compile_tex_template(path)
  template = File.read(path)
  re = /(?<=% begin base-directives).*(?=% end base-directives)/m
  compiled = template.gsub(re, "\n" + indent(BASE_TEX))

  File.write(path, compiled)
end

compile_tex_template("letter/letter.tex")
compile_tex_template("article/article.tex")
compile_tex_template("book/book.tex")

