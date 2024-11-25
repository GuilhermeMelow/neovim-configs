require('auto-save').setup({
  enabled = true,
  
  execution_message = {
    message = function() 
      return ("AutoSave: saved at ".. vim.fn.strftime("%H:%M:%S"))
    end,
    dim = 0.18,
    cleaning_interaval = 1250,
  },
  
  trigger_events = {"InsertLeave", "TextChanged"},
  
  condition = function(buffer) 
    local fn = vim.fn
    local utils = require("auto-save.utils.data")

    if fn.getbufvar(buffer, "&modifiable") == 1 
      and utils.not_in(fn.getbufvar(buffer, "&filetype"), {}) then
      return true
    end 
    return false
  end 
})
