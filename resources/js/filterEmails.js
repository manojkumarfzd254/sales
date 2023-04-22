var userId = $('#userId').val();

Echo.channel('filterEmail.'+userId)
    .listen('FilterEmailEvent', (e) => {
        var userId = $('#userId').val();
        $("#emailResponse-" +userId).show();
        $("#emailProgress-" +userId).show(); //emailProgressData
        $("#emailResponse-" +userId).addClass('alert-'+ e.data.info);
        $("#emailResponse-" +userId).empty().html(e.message);
        $("#emailProgressData-" + userId).css('width',e.data.percentage+'%');
        $("#emailProgressData-" + userId).text("Progress " + e.data.percentage+'%');
    });

