.class final Lsun/misc/NativeSignalHandler;
.super Ljava/lang/Object;
.source "NativeSignalHandler.java"

# interfaces
.implements Lsun/misc/SignalHandler;


# instance fields
.field private final handler:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lsun/misc/NativeSignalHandler;->handler:J

    .line 40
    return-void
.end method

.method private static native handle0(IJ)V
.end method


# virtual methods
.method getHandler()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lsun/misc/NativeSignalHandler;->handler:J

    return-wide v0
.end method

.method public handle(Lsun/misc/Signal;)V
    .registers 6

    .line 43
    invoke-virtual {p1}, Lsun/misc/Signal;->getNumber()I

    move-result v0

    iget-wide v2, p0, Lsun/misc/NativeSignalHandler;->handler:J

    invoke-static {v0, v2, v3}, Lsun/misc/NativeSignalHandler;->handle0(IJ)V

    .line 44
    return-void
.end method
