.class public abstract Lcom/google/common/util/concurrent/Service$Listener;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 3

    .line 290
    return-void
.end method

.method public running()V
    .registers 1

    .line 257
    return-void
.end method

.method public starting()V
    .registers 1

    .line 251
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2

    .line 266
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2

    .line 278
    return-void
.end method
