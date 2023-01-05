// Autogenerated from Pigeon (v4.2.14), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.maple52046.apollo;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class ApolloApi {
  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface ApolloApi {
    @NonNull String introduction();
    @NonNull String greeting(@NonNull String who);

    /** The codec used by ApolloApi. */
    static MessageCodec<Object> getCodec() {
      return       new StandardMessageCodec();    }
    /**Sets up an instance of `ApolloApi` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, ApolloApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.ApolloApi.introduction", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            ArrayList wrapped = new ArrayList<>();
            try {
              String output = api.introduction();
              wrapped.add(0, output);
            }
            catch (Error | RuntimeException exception) {
              ArrayList<Object> wrappedError = wrapError(exception);
              wrapped = wrappedError;
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.ApolloApi.greeting", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            ArrayList wrapped = new ArrayList<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              assert args != null;
              String whoArg = (String)args.get(0);
              if (whoArg == null) {
                throw new NullPointerException("whoArg unexpectedly null.");
              }
              String output = api.greeting(whoArg);
              wrapped.add(0, output);
            }
            catch (Error | RuntimeException exception) {
              ArrayList<Object> wrappedError = wrapError(exception);
              wrapped = wrappedError;
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  @NonNull private static ArrayList<Object> wrapError(@NonNull Throwable exception) {
    ArrayList<Object> errorList = new ArrayList<>(3);
    errorList.add(exception.toString());
    errorList.add(exception.getClass().getSimpleName());
    errorList.add("Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorList;
  }
}