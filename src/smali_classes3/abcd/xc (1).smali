.class final Labcd/xc;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5fcd2a07c2b42c0L  # -5.439162863533342E279

    const-wide v2, -0x7e99f586fd79e8bL  # -2.955485220757411E270

    const-class v4, Labcd/xc;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7051a2aadc40bc3L
    .end annotation

    const-wide v0, -0x895f7850e5ee3d0L

    :try_start_5
    sget-boolean v2, Labcd/xc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {}, Labcd/yc;->j6()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_17} :catch_28
    .catchall {:try_start_c .. :try_end_17} :catchall_2a

    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Labcd/yc;->j6(J)J

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_25

    const-wide/16 v2, 0x64

    :try_start_21
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_28
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    goto :goto_c

    :catchall_25
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v3
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_28} :catch_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2a

    :catch_28
    move-exception v0

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/xc;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method
