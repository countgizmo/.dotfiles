local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local entry_display = require "telescope.pickers.entry_display"
local actions = require "telescope.actions"

local displayer = entry_display.create {
  separator = " ",
  items = {
    { width = 20 },
    { width = 50 },
  },
}

local make_display = function(entry)
  return displayer {
    entry.value[1],
    entry.value[2],
  }
end

local vim_melodies_finder = finders.new_table {
  results = {
    {"dsf", "splice (delete surroundings of form)"},
    {"cse( | cse) | cseb", "surround element in parentheses"},
    {"cse[ | cse]", "surround element in brackets"},
    {"cse{ | cse}", "surround element in braces"},
    {"<I", "insert at the beginning of a form"},
    {">I", "insert at the ending of a form"},
    {"<f | >f", "move a form"},
    {"<e | >e", "move an element"},
    {"W B E gE", "move element wise"},
  },
  entry_maker = function(entry)
    return {
      value = entry,
      display = make_display,
      ordinal = entry[2],
    }
  end
}

local clojure_editing = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "Clojure Editing",
    finder = vim_melodies_finder,
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
      end)
      return true
    end,
  }):find()
end

function ClojureEditing()
  clojure_editing()
end
