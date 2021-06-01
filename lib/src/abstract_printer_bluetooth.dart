import 'package:tig_bluetooth_basic/tig_bluetooth_basic.dart';
import 'package:tig_ep_bluetooth/tig_ep_bluetooth.dart';
//

abstract class AbstractPrinterBluetooth {
  AbstractPrinterBluetooth(this.callback);
  BlueStateCallback callback;
  void startScan(Duration timeout, ScanResultsCallback callback);
  void stopScan();
  Future<PosPrintResult> writeBytes(
    List<int> bytes,
    PrinterBluetoothLocal bluetooth,
    int chunkSizeBytes,
    int queueSleepTimeMs,
  );
}
