.class public Lio/fabric/sdk/android/services/common/C;
.super Ljava/lang/Object;

# interfaces
.implements Lio/fabric/sdk/android/services/common/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
