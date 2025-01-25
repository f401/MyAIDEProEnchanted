.class final Labcd/Nv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ov;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final j6:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    iput-object p1, p0, Labcd/Nv;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    const-string v0, "Flush"

    :try_start_2
    invoke-static {p1, p2}, Labcd/kv;->j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "Initiating uncaught exception flush."

    invoke-static {v0, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Labcd/iw;->j6(J)Z

    move-result v3

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flush successful: elapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_35
    const-string v1, "Could not flush within allotted time of 1500ms."
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_38

    goto :goto_31

    :catchall_38
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    iget-object v0, p0, Labcd/Nv;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
