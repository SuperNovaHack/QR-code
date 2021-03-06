/**
 * Module     : Demo.mo
 * Copyright  : 2022 DFINITY Stiftung
 * License    : Apache 2.0 with LLVM Exception
 * Maintainer : Bazinga <praniltrack@gmail.com>
 * Stability  : Stable
 */

import QR "canister:qr";

actor {

  public func encode(
    version : QR.Version,
    level : QR.ErrorCorrection,
    mode : QR.Mode,
    text : Text
  ) : async Text {
    let result = await QR.encode(version, level, mode, text);
    switch result {
      case (?matrix) "\n" # (await QR.show(matrix));
      case _ "Error: Invalid input!";
    }
  };

}
