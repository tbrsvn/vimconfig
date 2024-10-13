" perl plugins


" node plugins


" python3 plugins


" ruby plugins

" Molten Windows Config
call remote#host#RegisterPlugin('python3', 'C:\\\\Users\\\\' . getenv('USERNAME') . '\\\\AppData\\\\Local\\\\nvim-data\\\\plugged\\\\molten-nvim\\\\rplugin\\\\python3\\\\molten', [
      \ {'sync': v:true, 'name': 'MoltenDeinit', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenDelete', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenEnterOutput', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenReevaluateCell', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenEvaluateLine', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenEvaluateOperator', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenEvaluateVisual', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenExportOutput', 'type': 'command', 'opts': {'bang': '', 'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenGoto', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenHideOutput', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenImagePopup', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenImportOutput', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenInfo', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenInit', 'type': 'command', 'opts': {'complete': 'file', 'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenInterrupt', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenLoad', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenNext', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenOpenInBrowser', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenPrev', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenReevaluateAll', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenRestart', 'type': 'command', 'opts': {'bang': '', 'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenSave', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenShowOutput', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenEvaluateArgument', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:true, 'name': 'MoltenEvaluateRange', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenAvailableKernels', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenBufLeave', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenRunningKernels', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenDefineCell', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenOperatorfunc', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'MoltenSendStdin', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenTick', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'MoltenTickInput', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenOnBufferUnload', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenOnCursorMoved', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenOnExitPre', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenOnWinScrolled', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenStatusLineInit', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenStatusLineKernels', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenUpdateInterface', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MoltenUpdateOption', 'type': 'function', 'opts': {}},
     \ ])
