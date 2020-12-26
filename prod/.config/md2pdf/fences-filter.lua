function Div(el)
  elClass = el.classes[1]
  -- insert element in front
  table.insert(
    el.content, 1,
    pandoc.RawBlock("latex", "\\begin{" .. elClass .. "Box}"))
  -- insert element at the back
  table.insert(
    el.content,
    pandoc.RawBlock("latex", "\\end{" .. elClass .. "Box}"))
  return el
end
