/**
 * Module     : Format.mo
 * Copyright  : 2022 DFINITY Stiftung
 * License    : Apache 2.0 with LLVM Exception
 * Maintainer : Bazinga <praniltrack@gmail.com>
 * Stability  : Stable
 */

import Common "Common";
import Galois "Galois";
import List "mo:base/List";
import Nat "Nat";
import Util "Util";

module {

  type ErrorCorrection = Common.ErrorCorrection;
  type List<T> = List.List<T>;

  public func encode(level : ErrorCorrection, maskRef : List<Bool>) : List<Bool> {
    let input = List.append<Bool>(Common.eciBits(level), maskRef);
    let poly1 = Galois.polyFromBits(Util.padRight(10, input));
    let poly2 = Galois.polyFromBits(Nat.natToBits(1335));
    Util.padLeftTo(15, Nat.natToBits(Nat.natXor(Nat.natFromBits(Galois.polyToBits(Galois.polyAdd(poly1, Galois.polyDivMod(poly1, poly2).1))), 21522)))
  };

}
