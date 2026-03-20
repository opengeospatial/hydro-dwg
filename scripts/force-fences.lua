-- Force CodeBlock to render as fenced Markdown
function CodeBlock(el)
  local info = ""
  if el.classes and #el.classes > 0 then
    info = table.concat(el.classes, " ")
  end

  -- choose a fence that won't conflict with content
  local fence = "```"
  if el.text:find("```", 1, true) then
    fence = "~~~~"
    if el.text:find("~~~~", 1, true) then
      fence = "````"
    end
  end

  local header = fence .. (info ~= "" and (" " .. info) or "")
  local body = el.text
  return pandoc.RawBlock("markdown", header .. "\n" .. body .. "\n" .. fence)
end

-- Convert wikilink links to proper markdown [text](target.md) links
-- TWiki reader uses title="wikilink"; HTML class="wikilink" also supported
function Link(el)
  local is_wikilink = false

  -- Check title attribute (from pandoc TWiki reader: title="wikilink")
  if el.title == "wikilink" then
    is_wikilink = true
  end

  -- Check class attribute (from HTML: class="wikilink")
  if not is_wikilink and el.attr and el.attr.classes then
    for _, c in ipairs(el.attr.classes) do
      if c == "wikilink" then is_wikilink = true; break end
    end
  end

  if is_wikilink then
    local target = el.target
    if not target:match("^https?://") and not target:match("%.md$") then
      el.target = target .. ".md"
    end
    el.title = ""
    el.attr = pandoc.Attr()
    return el
  end
end

-- Strip <span class="twiki-macro ..."> elements
function Span(el)
  local cls = ""
  if el.attr and el.attr.classes then
    for _, c in ipairs(el.attr.classes) do
      if c == "twiki-macro" then cls = "twiki-macro"; break end
    end
  end
  if cls == "twiki-macro" then
    if #el.content > 0 then
      return el.content
    else
      return {}
    end
  end
end
