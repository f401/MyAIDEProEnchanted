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
        "Lcom/google/android/gms/internal/ads/BD",
        "<",
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
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    new-instance v0, Lcom/google/android/gms/internal/ads/ho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ho;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    return-void
.end method

.method private final Zo()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->j6()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ho;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-float v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->v5()I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result v10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Ao;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    int-to-long v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;JJZII)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final DW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "cache:"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final DW()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    return-void
.end method

.method public final FH()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ao;->tp:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->tp:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final Hw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic j6(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic j6(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final synthetic j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mD;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/iD;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/pD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->VH:Lcom/google/android/gms/internal/ads/zo;

    check-cast p1, Lcom/google/android/gms/internal/ads/pD;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->j6(Lcom/google/android/gms/internal/ads/pD;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Ao;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v12, "error"

    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/pD;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v8, v7, Lcom/google/android/gms/internal/ads/Cn;->Hw:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v9, v7, Lcom/google/android/gms/internal/ads/Cn;->Zo:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/pD;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ND;Lcom/google/android/gms/internal/ads/BD;IIZLcom/google/android/gms/internal/ads/sD;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/Cn;->u7:Z

    if-eqz v5, :cond_7

    new-instance v5, Lcom/google/android/gms/internal/ads/Un;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/Un;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/BD;Lcom/google/android/gms/internal/ads/Vn;)V

    move-object v10, v5

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/mD;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;)V

    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v4, v13, v0}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Cn;->FH:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v18, v0

    move-wide v4, v6

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v19, 0x2000

    move/from16 v0, v19

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v8, v9}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ho;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v4, v5}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v4, v12

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x22

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Failed to preload url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v4, v5}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    if-nez v8, :cond_6

    invoke-interface {v11}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v8

    sub-long v20, v8, v4

    cmp-long v19, v20, v14

    if-ltz v19, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-wide v4, v8

    :cond_5
    sub-long/2addr v8, v6

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v16

    cmp-long v8, v8, v20

    if-lez v8, :cond_1

    const-string v4, "downloadTimeout"

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Timeout exceeded. Limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :cond_6
    const-string v4, "externalAbort"

    :try_start_5
    new-instance v5, Ljava/io/IOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x23

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Precache abort at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_0
    move-exception v4

    :goto_4
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v5

    move-object v4, v12

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    goto :goto_4

    :cond_7
    move-object v10, v4

    goto/16 :goto_0
.end method

.method public final v5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    return v0
.end method
