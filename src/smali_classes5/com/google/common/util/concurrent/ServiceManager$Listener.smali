.class public abstract Lcom/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/google/common/util/concurrent/Service;)V
    .registers 2

    .line 183
    return-void
.end method

.method public healthy()V
    .registers 1

    .line 170
    return-void
.end method

.method public stopped()V
    .registers 1

    .line 176
    return-void
.end method
