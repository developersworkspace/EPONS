var Service = require('node-windows').Service;

// Create a new service object
var svc = new Service({
  name:'EPONS API',
  description: 'EPONS v3 API service',
  script: 'E:\\NodeJSSites\\api.admin.epons.sadfm.co.za\\bin\\www'
});

// Listen for the "install" event, which indicates the
// process is available as a service.
svc.on('install',function(){
  svc.start();
});

svc.install();