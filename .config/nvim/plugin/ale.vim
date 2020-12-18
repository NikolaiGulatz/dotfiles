let g:ale_linters = {
\  'ruby': ['rubocop'],
\  'javascript': ['eslint'],
\  'python': ['pylint'],
\}

let g:ale_open_list = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_sign_error = "!!"
let g:ale_sign_warning = "??"
let g:ale_virtualenv_dir_names = ['.venv']
