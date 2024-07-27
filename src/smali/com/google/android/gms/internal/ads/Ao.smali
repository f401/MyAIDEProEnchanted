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
    .registers 4

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
    .registers 12

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
    .registers 4

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
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    return-void
.end method

.method public final FH()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->tp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

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
    .registers 4

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
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Ao;->Hw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Ao;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v10, "error"

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/pD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v6, v5, Lcom/google/android/gms/internal/ads/Cn;->Hw:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v7, v5, Lcom/google/android/gms/internal/ads/Cn;->Zo:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/pD;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ND;Lcom/google/android/gms/internal/ads/BD;IIZLcom/google/android/gms/internal/ads/sD;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/Cn;->u7:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_7

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/Un;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Un;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/BD;Lcom/google/android/gms/internal/ads/Vn;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/mD;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Dn;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_0

    :try_start_3
    move-object/from16 v0, p0

    invoke-interface {v2, v11, v0}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ao;->v5:Lcom/google/android/gms/internal/ads/Cn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Cn;->FH:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    const/16 v2, 0x2000

    new-array v2, v2, [B

    move-wide v4, v6

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v13, 0x2000

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-interface {v3, v2, v8, v9}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ao;->gn:Lcom/google/android/gms/internal/ads/ho;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ho;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ao;->EQ:Ljava/lang/Object;

    monitor-enter v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v18, 0x0

    :try_start_8
    move/from16 v0, v18

    invoke-virtual {v13, v2, v0, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v2, v10

    :goto_3
    move-object v3, v4

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to preload url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/Ao;->Zo:Z

    if-nez v8, :cond_6

    invoke-interface {v12}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v8

    sub-long v18, v8, v4

    cmp-long v13, v18, v14

    if-ltz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ao;->Zo()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-wide v4, v8

    :cond_5
    sub-long/2addr v8, v6

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v16

    cmp-long v8, v8, v18

    if-lez v8, :cond_1

    const-string v10, "downloadTimeout"

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v3

    move-object v2, v10

    goto/16 :goto_4

    :cond_6
    const-string v10, "externalAbort"

    :try_start_c
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ao;->u7:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Precache abort at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_5
    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v4

    move-object v2, v3

    goto/16 :goto_3

    :catch_3
    move-exception v3

    move-object v2, v10

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    move-object v3, v10

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_5

    :cond_7
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ao;->we:Z

    return v0
.end method
