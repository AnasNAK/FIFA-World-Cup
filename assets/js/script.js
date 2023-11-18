// Function to show popup when group name is clicked
document.addEventListener('click', function (e) {
    if (e.target && e.target.classList.contains('group-name')) {
        const groupId = e.target.getAttribute('data-group-id');
        const popup = document.getElementById('popup_' + groupId);
        if (popup) {
            popup.style.display = 'block';
        }
    }
});
// Function to show team popup when team name or image is clicked
document.addEventListener('click', function (e) {
    if (e.target && e.target.classList.contains('team-details')) {
        const teamId = e.target.getAttribute('data-team-id');
        const teamPopup = document.getElementById('team_popup_' + teamId);
        if (teamPopup) {
            teamPopup.style.display = 'block';
        }
    }
});

// Function to close team popup
function closeTeamPopup(teamId) {
    const teamPopup = document.getElementById('team_popup_' + teamId);
    if (teamPopup) {
        teamPopup.style.display = 'none';
    }
}



    // Function to close popup
    function closePopup(groupId) {
        const popup = document.getElementById('popup_' + groupId);
        if (popup) {
            popup.style.display = 'none';
        }
    }