/**
 * Module     : Kanji.mo
 * Copyright  : 2022 DFINITY Stiftung
 * License    : Apache 2.0 with LLVM Exception
 * Maintainer : Bazinga <praniltrack@gmail.com>
 * Stability  : Experimental
 */

import Debug "mo:base/Debug";
import List "mo:base/List";
import Prelude "mo:base/Prelude";
import Version "Version";

module {

  type List<T> = List.List<T>;
  type Version = Version.Version;

  public func encode(version : Version, text : Text) : ?List<Bool> {
    Debug.print("Error: Kanji mode is not yet implemented!");
    Prelude.unreachable()
  };

}
