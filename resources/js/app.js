import Echo from "laravel-echo"

window.Pusher = require('pusher-js');

var configData = {
    broadcaster: 'pusher',
    key: 'mycustomapikey',
    cluster: 'eu',
    wsHost: window.location.hostname,
    wsPort: 6001,
    wssPort: 6001,
    forceTLS: false,
    disableStats: false,
    enabledTransports: ['ws', 'wss'],
    encrypted: false,
    //forceTLS: false
};

if (location.protocol !== 'https:') {
    configData.forceTLS = false;
}
window.Echo = new Echo(configData);

