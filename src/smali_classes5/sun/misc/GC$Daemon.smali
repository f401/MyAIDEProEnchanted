.class Lsun/misc/GC$Daemon;
.super Ljava/lang/Thread;
.source "GC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/GC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Daemon"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/ThreadGroup;)V
    .registers 3

    .line 126
    const-string v0, "GC Daemon"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadGroup;Lsun/misc/GC$1;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1}, Lsun/misc/GC$Daemon;-><init>(Ljava/lang/ThreadGroup;)V

    return-void
.end method

.method public static create()V
    .registers 1

    .line 131
    new-instance v0, Lsun/misc/GC$Daemon$1;

    invoke-direct {v0}, Lsun/misc/GC$Daemon$1;-><init>()V

    .line 144
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 91
    :goto_0
    invoke-static {}, Lsun/misc/GC;->access$100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_5
    invoke-static {}, Lsun/misc/GC;->access$200()J

    move-result-wide v4

    .line 94
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-nez v0, :cond_18

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lsun/misc/GC;->access$302(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 97
    monitor-exit v2

    return-void

    .line 100
    :cond_18
    invoke-static {}, Lsun/misc/GC;->maxObjectInspectionAge()J

    move-result-wide v0

    .line 101
    cmp-long v3, v0, v4

    if-ltz v3, :cond_25

    .line 109
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_30

    .line 110
    const-wide/16 v0, 0x0

    .line 117
    :cond_25
    :try_start_25
    invoke-static {}, Lsun/misc/GC;->access$100()Ljava/lang/Object;

    move-result-object v3

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_33
    .catchall {:try_start_25 .. :try_end_2e} :catchall_30

    .line 120
    :try_start_2e
    monitor-exit v2

    goto :goto_0

    .line 121
    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v0

    .line 118
    :catch_33
    move-exception v0

    .line 119
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    goto :goto_0
.end method
