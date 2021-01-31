-- Enable Criticmarkup
function RawInline(el)
  -- Replace HTML-Comments with latex-comments
  if (el.format == "html") and (string.starts(el.text, "<!--")) then
    return pandoc.RawInline("tex", "\\chcomment{" .. string.gsub(string.gsub(el.text, "<!%-%-% ", ""), "%-%->", "") .. "}")
  end
  -- Replace preprocessed changes-tags with prefixed changes-tags
  if (el.format == "tex") and (string.starts(el.text,"\\added") or string.starts(el.text,"\\deleted") or string.starts(el.text, "\\replaced") or string.starts(el.text, "\\highlight") or string.starts(el.text, "\\comment")) then
    return pandoc.RawInline("tex", string.gsub(el.text, "\\", "\\ch"))
  end
  return el
end

function string.starts(fullString,substring)
   return string.sub(fullString,1,string.len(substring))==substring
end
