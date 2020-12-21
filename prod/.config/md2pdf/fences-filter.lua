function Div(el)
  elClass = el.classes[1]
  if ( elClass == "danger" or elClass == "warning" or elClass == "info" ) then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{" .. elClass .. "Box}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{" .. elClass .. "Box}"))
  end
  return el
end
