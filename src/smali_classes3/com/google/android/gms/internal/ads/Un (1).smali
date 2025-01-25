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
            "Lcom/google/android/gms/internal/ads/BD<",
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
            "Lcom/google/android/gms/internal/ads/BD<",
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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->VH:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    goto :goto_19

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_20

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
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
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ms"

    const-string v4, "Cache connection took "

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-nez v0, :cond_14a

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->VH:Landroid/net/Uri;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_1a

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mD;)V

    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzty;->j6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->NZ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_102

    if-eqz v6, :cond_121

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v9, v6, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzty;->VH:Z

    if-eqz v0, :cond_41

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->jg:Lcom/google/android/gms/internal/ads/e;

    goto :goto_43

    :cond_41
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->IM:Lcom/google/android/gms/internal/ads/e;

    :goto_43
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v11

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gW()Lcom/google/android/gms/internal/ads/XF;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->FH:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/XF;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzty;)Ljava/util/concurrent/Future;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x2c

    :try_start_65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v9, v10, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;
    :try_end_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_65 .. :try_end_6f} :catch_b6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_65 .. :try_end_6f} :catch_b4
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6f} :catch_95
    .catchall {:try_start_65 .. :try_end_6f} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v9

    sub-long/2addr v9, v11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v0, v5, v9, v10}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-wide v7

    :catchall_93
    move-exception v0

    goto :goto_de

    :catch_95
    move-exception v0

    :try_start_96
    invoke-interface {v13, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v7

    sub-long/2addr v7, v11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v0, v14, v7, v8}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_cd

    :catch_b4
    move-exception v0

    goto :goto_b7

    :catch_b6
    move-exception v0

    :goto_b7
    :try_start_b7
    invoke-interface {v13, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v7

    sub-long/2addr v7, v11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v0, v14, v7, v8}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_cd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_121

    :goto_de
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v5

    sub-long/2addr v5, v11

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Un;->Zo:Lcom/google/android/gms/internal/ads/Vn;

    invoke-interface {v2, v14, v5, v6}, Lcom/google/android/gms/internal/ads/Vn;->j6(ZJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    throw v0

    :cond_102
    if-eqz v6, :cond_111

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v3, v6, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v0

    goto :goto_112

    :cond_111
    const/4 v0, 0x0

    :goto_112
    if-eqz v0, :cond_121

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    return-wide v7

    :cond_121
    :goto_121
    if-eqz v6, :cond_142

    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzty;->j6:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/mD;->DW:[B

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/mD;->Zo:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/internal/ads/mD;->VH:I

    move-object v9, v0

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    goto :goto_143

    :cond_142
    move-object v0, v2

    :goto_143
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v2

    return-wide v2

    :cond_14a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Un;->DW:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Un;->Hw:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result p1

    :goto_13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Un;->v5:Lcom/google/android/gms/internal/ads/BD;

    if-eqz p2, :cond_1a

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;I)V

    :cond_1a
    return p1

    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
