.class public Lorg/apache/tools/ant/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/apache/tools/ant/util/StreamUtils$1;

    const-wide v2, 0x7fffffffffffffffL

    const/16 v1, 0x10

    invoke-direct {v0, v2, v3, v1, p0}, Lorg/apache/tools/ant/util/StreamUtils$1;-><init>(JILjava/util/Enumeration;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .line 62
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
