.class public interface abstract Lsun/misc/SignalHandler;
.super Ljava/lang/Object;
.source "SignalHandler.java"


# static fields
.field public static final SIG_DFL:Lsun/misc/SignalHandler;

.field public static final SIG_IGN:Lsun/misc/SignalHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 42
    new-instance v0, Lsun/misc/NativeSignalHandler;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lsun/misc/NativeSignalHandler;-><init>(J)V

    sput-object v0, Lsun/misc/SignalHandler;->SIG_DFL:Lsun/misc/SignalHandler;

    .line 46
    new-instance v0, Lsun/misc/NativeSignalHandler;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lsun/misc/NativeSignalHandler;-><init>(J)V

    sput-object v0, Lsun/misc/SignalHandler;->SIG_IGN:Lsun/misc/SignalHandler;

    return-void
.end method


# virtual methods
.method public abstract handle(Lsun/misc/Signal;)V
.end method
