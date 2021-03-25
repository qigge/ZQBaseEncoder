import XCTest
@testable import ZQBaseEncoder

final class ZQBaseEncoderTests: XCTestCase {
    func testBaseEncoder() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual("".zq_base16Encode(), "", "base16 not pass!")
        XCTAssertEqual("f".zq_base16Encode(), "66", "base16 not pass!")
        XCTAssertEqual("fo".zq_base16Encode(), "666F", "base16 not pass!")
        XCTAssertEqual("foo".zq_base16Encode(), "666F6F", "base16 not pass!")
        XCTAssertEqual("foob".zq_base16Encode(), "666F6F62", "base16 not pass!")
        XCTAssertEqual("fooba".zq_base16Encode(), "666F6F6261", "base16 not pass!")
        XCTAssertEqual("foobar".zq_base16Encode(), "666F6F626172", "base16 not pass!")
        
        XCTAssertEqual("".zq_base32Encode(), "", "base32 not pass!")
        XCTAssertEqual("f".zq_base32Encode(), "MY======", "base32 not pass!")
        XCTAssertEqual("fo".zq_base32Encode(), "MZXQ====", "base32 not pass!")
        XCTAssertEqual("foo".zq_base32Encode(), "MZXW6===", "base32 not pass!")
        XCTAssertEqual("foob".zq_base32Encode(), "MZXW6YQ=", "base32 not pass!")
        XCTAssertEqual("fooba".zq_base32Encode(), "MZXW6YTB", "base32 not pass!")
        XCTAssertEqual("foobar".zq_base32Encode(), "MZXW6YTBOI======", "base32 not pass!")
        
        XCTAssertEqual("".zq_base64Encode(), "", "base64 not pass!")
        XCTAssertEqual("f".zq_base64Encode(), "Zg==", "base64 not pass!")
        XCTAssertEqual("fo".zq_base64Encode(), "Zm8=", "base64 not pass!")
        XCTAssertEqual("foo".zq_base64Encode(), "Zm9v", "base64 not pass!")
        XCTAssertEqual("foob".zq_base64Encode(), "Zm9vYg==", "base64 not pass!")
        XCTAssertEqual("fooba".zq_base64Encode(), "Zm9vYmE=", "base64 not pass!")
        XCTAssertEqual("foobar".zq_base64Encode(), "Zm9vYmFy", "base64 not pass!")
        
        
        XCTAssertEqual("", "".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("f", "66".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("fo", "666F".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("foo", "666F6F".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("foob", "666F6F62".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("fooba", "666F6F6261".zq_base16Decode(), "base16 not pass!")
        XCTAssertEqual("foobar", "666F6F626172".zq_base16Decode(), "base16 not pass!")
        
        XCTAssertEqual("", "".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("f", "MY======".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("fo", "MZXQ====".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("foo", "MZXW6===".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("foob", "MZXW6YQ=".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("fooba", "MZXW6YTB".zq_base32Decode(), "base32 not pass!")
        XCTAssertEqual("foobar", "MZXW6YTBOI======".zq_base32Decode(), "base32 not pass!")
        
        XCTAssertEqual("", "".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("f", "Zg==".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("fo", "Zm8=".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("foo", "Zm9v".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("foob", "Zm9vYg==".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("fooba", "Zm9vYmE=".zq_base64Decode(), "base64 not pass!")
        XCTAssertEqual("foobar", "Zm9vYmFy".zq_base64Decode(), "base64 not pass!")
    }

    static var allTests = [
        ("testExample", testBaseEncoder),
    ]
}
