/// Tae Won Ha - http://taewon.de - @hataewon
/// See LICENSE

import Foundation
import RxSwift
import RxPack

public final class RxNeovimApi {
  public enum Event {
    case error(msg: String)
  }

  public struct Buffer: Equatable, Hashable {
    public let handle: Int
    public init(_ handle: Int) { self.handle = handle }
  }

  public struct Window: Equatable, Hashable {
    public let handle: Int
    public init(_ handle: Int) { self.handle = handle }
  }

  public struct Tabpage: Equatable, Hashable {
    public let handle: Int
    public init(_ handle: Int) { self.handle = handle }
  }

  public typealias Value = RxMsgpackRpc.Value

  public var streamResponses: Bool {
    get { self.msgpackRpc.streamResponses }
    set { self.msgpackRpc.streamResponses = newValue }
  }

  public var msgpackRawStream: Observable<RxMsgpackRpc.Message> { self.msgpackRpc.stream }

  public func run(at path: String) -> Completable { self.msgpackRpc.run(at: path) }

  public func stop() -> Completable { self.msgpackRpc.stop() }

  public func checkBlocked<T>(_ single: Single<T>) -> Single<T> {
    self
      .getMode()
      .flatMap { dict -> Single<T> in
        guard (dict["blocking"]?.boolValue ?? false) == false else {
          throw RxNeovimApi.Error.blocked
        }

        return single
      }
  }

  public func rpc(
    method: String,
    params: [RxNeovimApi.Value],
    expectsReturnValue: Bool = true
  ) -> Single<RxNeovimApi.Value> {
    self.msgpackRpc
      .request(method: method, params: params, expectsReturnValue: expectsReturnValue)
      .map { response -> RxMsgpackRpc.Value in
        guard response.error.isNil else { throw RxNeovimApi.Error(response.error) }

        return response.result
      }
  }

  public init() {}

  private let msgpackRpc = RxMsgpackRpc(queueQos: .userInitiated)
}
