function NullCheck(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;

    return false;
}
