-- Replace HTML-Comments with latex-comments
function RawInline(el)
  if (el.format == "html") and (string.starts(el.text, "<!--")) then
    return pandoc.RawInline("tex", "\\chcomment{" .. string.gsub(string.gsub(el.text, "<!%-%-% ", ""), "%-%->", "") .. "}")
  end
  return el
end

function string.starts(fullString,substring)
   return string.sub(fullString,1,string.len(substring))==substring
end
