%cstring_bounded_output_none(char *buf, MAXSTR);
%cstring_bounded_output_none(char *optlibs, MAXSTR);

// FIXME: Are these really useful?
%ignore iterate_func_chunks;
%ignore get_idasgn_header_by_short_name;

// Kernel-only & unexported symbols
%ignore del_regargs;
%ignore write_regargs;
%ignore find_regarg;
%ignore free_regarg;
%ignore determine_rtl;
%ignore init_signatures;
%ignore save_signatures;
%ignore term_signatures;
%ignore init_funcs;
%ignore save_funcs;
%ignore term_funcs;
%ignore move_funcs;
%ignore copy_noret_info;
%ignore recalc_func_noret_flag;
%ignore plan_for_noret_analysis;
%ignore invalidate_sp_analysis;

%ignore create_func_eas_array;
%ignore auto_add_func_tails;
%ignore read_tails;

%ignore get_idasgn_desc;
%rename (get_idasgn_desc) py_get_idasgn_desc;
%rename (get_idasgn_desc_with_matches) py_get_idasgn_desc_with_matches;

%ignore get_func_cmt;
%rename (get_func_cmt) py_get_func_cmt;

%include "funcs.hpp"

%clear(char *buf);
%clear(char *optlibs);

%inline %{
//<inline(py_funcs)>
//</inline(py_funcs)>
%}
