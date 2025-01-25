.class Lsun/misc/Signal$1;
.super Ljava/lang/Object;
.source "Signal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Signal;->dispatch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$handler:Lsun/misc/SignalHandler;

.field final val$sig:Lsun/misc/Signal;


# direct methods
.method constructor <init>(Lsun/misc/SignalHandler;Lsun/misc/Signal;)V
    .registers 3

    .line 206
    iput-object p1, p0, Lsun/misc/Signal$1;->val$handler:Lsun/misc/SignalHandler;

    iput-object p2, p0, Lsun/misc/Signal$1;->val$sig:Lsun/misc/Signal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 212
    iget-object v0, p0, Lsun/misc/Signal$1;->val$handler:Lsun/misc/SignalHandler;

    iget-object v1, p0, Lsun/misc/Signal$1;->val$sig:Lsun/misc/Signal;

    invoke-interface {v0, v1}, Lsun/misc/SignalHandler;->handle(Lsun/misc/Signal;)V

    .line 213
    return-void
.end method
