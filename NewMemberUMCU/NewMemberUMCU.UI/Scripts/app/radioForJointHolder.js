$(document).ready(function () {
    $("input[name$='accountRadios']").click(function() {
        var test = $(this).val();

        if (($test) == 1) {
            $("modalSpace").hide();
        };
    });
});