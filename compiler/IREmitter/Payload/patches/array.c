
typedef VALUE (*BlockFFIType)(VALUE firstYieldedArg, VALUE closure, int argCount, const VALUE *args, VALUE blockArg);

VALUE sorbet_rb_array_square_br_slowpath(VALUE recv, ID fun, int argc, const VALUE *const restrict argv,
                                         BlockFFIType blk, VALUE closure) {
    VALUE ary = recv;
    // Don't call rb_ary_aref directly because we already checked the arity.
    if (argc == 2) {
        return rb_ary_aref2(ary, argv[0], argv[1]);
    }
    // This is slightly inefficient, as we arrived in this function because we already
    // handled the argc == 1 && FIXNUM_P(argv[0]) case.  But it's less code duplication.
    return rb_ary_aref1(ary, argv[0]);
}

VALUE rb_ary_compact_bang_forwarder(VALUE ary) {
    return rb_ary_compact_bang(ary);
}
