import 'dart:io';

class WindowsServiceController {
  final String serviceName;

  WindowsServiceController(this.serviceName);

  Future<ProcessResult> getStatus() {
    return Process.run('sc', ['query', serviceName]);
  }

  Future<ProcessResult> start() {
    return Process.run('sc', ['start', serviceName]);
  }

  Future<ProcessResult> stop() {
    return Process.run('sc', ['stop', serviceName]);
  }

  Future<ProcessResult> restart() async {
    await stop();
    return start();
  }

  Future<ProcessResult> setStartupType(String startupType) {
    return Process.run('sc', ['config', serviceName, 'start=', startupType]);
  }
}

class LinuxServiceController {
  final String serviceName;

  LinuxServiceController(this.serviceName);

  Future<ProcessResult> getStatus() {
    return Process.run('systemctl', ['is-active', serviceName]);
  }

  Future<ProcessResult> start() {
    return Process.run('systemctl', ['start', serviceName]);
  }

  Future<ProcessResult> stop() {
    return Process.run('systemctl', ['stop', serviceName]);
  }

  Future<ProcessResult> restart() {
    return Process.run('systemctl', ['restart', serviceName]);
  }

  Future<ProcessResult> setStartupType(String startupType) {
    return Process.run('systemctl', [startupType, serviceName]);
  }
}


void main() async {
  /*var controller = WindowsServiceController('wuauserv');

  print('Status: ${await controller.getStatus()}');
  print('Start: ${await controller.start()}');
  print('Stop: ${await controller.stop()}');
  print('Restart: ${await controller.restart()}');
  print('Set startup type to manual: ${await controller.setStartupType('demand')}');*/


  var controllerLinux = LinuxServiceController('cups');

  print('Status: ${await controllerLinux.getStatus()}');
  print('Start: ${await controllerLinux.start()}');
  //print('Stop: ${await controllerLinux.stop()}');
 /* print('Restart: ${await controllerLinux.restart()}');
  print('Set startup type to manual: ${await controllerLinux.setStartupType('enable')}');*/


}
