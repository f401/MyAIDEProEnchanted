.class public final Lcom/google/android/gms/internal/ads/Ao;
.super Lcom/google/android/gms/internal/ads/po;

# interfaces
.implements Lcom/google/android/gms/internal/ads/BD;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/po;",
        "Lcom/google/android/gms/internal/ads/BD<",
        "Lcom/google/android/gms/internal/ads/iD;",
        ">;"
    }
.end annotation


# instance fields
.field private final EQ:Ljava/lang/Object;

.field private Hw:Ljava/lang/String;

.field private final VH:Lcom/google/android/gms/internal/ads/zo;

.field private Zo:Z

.field private final gn:Lcom/google/android/gms/internal/ads/ho;

.field private tp:Z

.field private u7:Ljava/nio/ByteBuffer;

.field private final v5:Lcom/google/android/gms/internal/ads/Cn;

.field private we:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    new-instance p1, Lcom/google/android/gms/internal/ads/ho;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ho;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    return-void
.end method

.method private final Zo()V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->j6()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ho;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v0, v2

    int-to-float v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v1, :cond_25

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->v5()I

    move-result v11

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result v12

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/Ao;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v1

    int-to-long v8, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;JJZII)V

    return-void
.end method


# virtual methods
.method protected final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final DW()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    return-void
.end method

.method public final FH()Ljava/nio/ByteBuffer;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ao;->tp:Z

    if-nez v3, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ao;->tp:Z

    :cond_11
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic j6(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public final synthetic j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mD;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/iD;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/pD;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    check-cast p1, Lcom/google/android/gms/internal/ads/pD;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zo;->j6(Lcom/google/android/gms/internal/ads/pD;)V

    :cond_d
    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Ao;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "error"

    const/4 v13, 0x0

    :try_start_d
    new-instance v0, Lcom/google/android/gms/internal/ads/pD;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v5, v1, Lcom/google/android/gms/internal/ads/Cn;->Hw:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v6, v1, Lcom/google/android/gms/internal/ads/Cn;->Zo:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/pD;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ND;Lcom/google/android/gms/internal/ads/BD;IIZLcom/google/android/gms/internal/ads/sD;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Cn;->u7:Z

    if-eqz v1, :cond_31

    new-instance v1, Lcom/google/android/gms/internal/ads/Un;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/ads/Un;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/BD;Lcom/google/android/gms/internal/ads/Vn;)V

    move-object v0, v1

    :cond_31
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/mD;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v1, :cond_4a

    invoke-interface {v1, v11, v9}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v9, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v8, v8, Lcom/google/android/gms/internal/ads/Cn;->FH:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    const/16 v8, 0x2000

    new-array v15, v8, [B

    move-wide/from16 v16, v2

    :goto_82
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-interface {v0, v15, v13, v14}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v14

    const/4 v8, -0x1

    if-ne v14, v8, :cond_a4

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {v9, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_bd

    :cond_a4
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a7} :catch_12a

    :try_start_a7
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    if-nez v13, :cond_b1

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v13, v15, v10, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_b1
    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_12c

    :try_start_b2
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_bf

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V

    :goto_bd
    const/4 v1, 0x1

    return v1

    :cond_bf
    iget-boolean v8, v9, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    if-nez v8, :cond_101

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v13

    sub-long v18, v13, v16

    cmp-long v8, v18, v4

    if-ltz v8, :cond_d2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d0} :catch_12a

    move-wide/from16 v16, v13

    :cond_d2
    sub-long/2addr v13, v2

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v6

    cmp-long v8, v13, v18

    if-gtz v8, :cond_e1

    move-object/from16 v10, p1

    const/16 v8, 0x2000

    const/4 v13, 0x0

    goto :goto_82

    :cond_e1
    const-string v1, "downloadTimeout"

    :try_start_e3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timeout exceeded. Limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_101} :catch_127

    :cond_101
    const-string v1, "externalAbort"

    :try_start_103
    new-instance v0, Ljava/io/IOException;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Precache abort at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_127} :catch_127

    :catch_127
    move-exception v0

    move-object v12, v1

    goto :goto_136

    :catch_12a
    move-exception v0

    goto :goto_136

    :catchall_12c
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v9

    :goto_130
    :try_start_130
    monitor-exit v8
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_134

    :try_start_131
    throw v0
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_132} :catch_132

    :catch_132
    move-exception v0

    goto :goto_139

    :catchall_134
    move-exception v0

    goto :goto_130

    :goto_136
    move-object/from16 v1, p1

    move-object v2, v9

    :goto_139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to preload url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v11, v12, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    return v0
.end method
