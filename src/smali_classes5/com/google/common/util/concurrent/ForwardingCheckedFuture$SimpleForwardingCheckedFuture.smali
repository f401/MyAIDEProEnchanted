.class public abstract Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.source "ForwardingCheckedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingCheckedFuture",
        "<TV;TX;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/CheckedFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CheckedFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lcom/google/common/util/concurrent/CheckedFuture;

    .line 89
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/util/concurrent/CheckedFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lcom/google/common/util/concurrent/CheckedFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method
