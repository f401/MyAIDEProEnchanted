.class public final Lcom/google/android/gms/internal/ads/Un;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iD;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Z

.field private final FH:Landroid/content/Context;

.field private final Hw:Lcom/google/android/gms/internal/ads/iD;

.field private VH:Landroid/net/Uri;

.field private final Zo:Lcom/google/android/gms/internal/ads/Vn;

.field private j6:Ljava/io/InputStream;

.field private final v5:Lcom/google/android/gms/internal/ads/BD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/BD",
            "<",
            "Lcom/google/android/gms/internal/ads/iD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/BD;Lcom/google/android/gms/internal/ads/Vn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/iD;",
            "Lcom/google/android/gms/internal/ads/BD",
            "<",
            "Lcom/google/android/gms/internal/ads/iD;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Vn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Un;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Un;->VH:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->VH:Landroid/net/Uri;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;)J
    .registers 14

    const-wide/16 v2, -0x1

    const/4 v11, 0x0

    const/16 v10, 0x2c

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-nez v0, :cond_5

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->VH:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mD;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzty;->j6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->NZ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    iget-boolean v0, v4, Lcom/google/android/gms/internal/ads/zzty;->VH:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->jg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gW()Lcom/google/android/gms/internal/ads/XF;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Un;->FH:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/XF;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzty;)Ljava/util/concurrent/Future;

    move-result-object v5

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v4, v9, v0, v1}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cache connection took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->IM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v2, v11, v0, v1}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v4, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/ads/mD;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzty;->j6:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/mD;->DW:[B

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/mD;->Zo:Ljava/lang/String;

    iget v11, p1, Lcom/google/android/gms/internal/ads/mD;->VH:I

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v2, v11, v0, v1}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v1, v11, v2, v3}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cache connection took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    if-eqz v4, :cond_4

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    move-wide v0, v2

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v1, p1

    goto/16 :goto_3
.end method

.method public final read([BII)I
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;I)V

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to read closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
