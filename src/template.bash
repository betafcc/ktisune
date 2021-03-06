declare -A __ks_template=(
  [prompt.PS1]=$(
    for name in venv tag path git arrow; do
      printf '${__ks_template[%s.${__ks_model[%s.key]}]@P}' "${name}" "${name}"
    done)
  [prompt.PS2]='▐ '
  [prompt.PS4]='▐ <bold+cyan:${FUNCNAME[0]}<yellow::${LINENO}:>> '

  [venv.on]='<bold+cyan:[<yellow:>]>'
  [venv.off]=''

  [tag.${HOME}/Desktop]='<bold+white:【<cyan:今>】>'
  [tag.${HOME}]='<bold+white:【<yellow:家>】>'
  [tag./]='<bold+white:【<red:本>】>'

  [path.no_untagged]=''
  [path.single_untagged]='<bold:${__ks_model[sys.W]} >'
  [path.multi_untagged]='<bold:$(for _ in $(seq $((${__ks_model[tag.untagged_levels]} - 1))); do
    printf ❯
  done) ${__ks_model[sys.W]} >'

  [git.modified]='<bold+red:❪${__ks_model[git.branch]}❫ >'
  [git.staged]='<bold+red:❪${__ks_model[git.branch]}❫ >'
  [git.untracked]='<bold+red:❪${__ks_model[git.branch]}❫ >'
  [git.behind_ahead]='<bold+yellow:❪${__ks_model[git.branch]}❫ >'
  [git.ok]='<bold+cyan:❪${__ks_model[git.branch]}❫ >'
  [git.not_repo]=''

  [arrow.erroed_last]='<bold+red:❱ >'
  [arrow.has_jobs]='<bold+yellow:❱ >'
  [arrow.ok]='<bold:❱ >'
)
