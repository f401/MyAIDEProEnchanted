.class public abstract Lcom/s1243808733/aide/application/activity/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/Process$Bridge;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V
.end method
