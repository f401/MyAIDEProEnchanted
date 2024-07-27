.class public final Lcom/google/android/gms/internal/ads/sC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cC;


# instance fields
.field private final DW:[I

.field private EQ:Ljava/io/IOException;

.field private final FH:Lcom/google/android/gms/internal/ads/_C;

.field private final Hw:I

.field private final VH:J

.field private final Zo:Lcom/google/android/gms/internal/ads/iD;

.field private final gn:I

.field private final j6:Lcom/google/android/gms/internal/ads/yD;

.field private tp:I

.field private u7:Lcom/google/android/gms/internal/ads/wC;

.field private final v5:[Lcom/google/android/gms/internal/ads/uC;

.field private we:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/wC;I[ILcom/google/android/gms/internal/ads/_C;ILcom/google/android/gms/internal/ads/iD;JIZZ)V
    .registers 25

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sC;->j6:Lcom/google/android/gms/internal/ads/yD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->DW:[I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/gms/internal/ads/sC;->Hw:I

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/gms/internal/ads/sC;->gn:I

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sC;->DW()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/uC;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v3

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/CC;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    new-instance v3, Lcom/google/android/gms/internal/ads/uC;

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/uC;-><init>(JLcom/google/android/gms/internal/ads/CC;ZZ)V

    aput-object v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final DW()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/CC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sC;->DW:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget v0, v4, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vC;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->j6:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void

    :cond_0
    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/RB;)V
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/_B;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/_B;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v1

    aget-object v1, v0, v1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/SB;->DW()Lcom/google/android/gms/internal/ads/Wz;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/rC;

    check-cast v0, Lcom/google/android/gms/internal/ads/Lz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/rC;-><init>(Lcom/google/android/gms/internal/ads/Lz;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/aC;JLcom/google/android/gms/internal/ads/VB;)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    sub-long v4, v4, p2

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v6, v4, v5}, Lcom/google/android/gms/internal/ads/_C;->j6(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/_C;->j6()I

    move-result v5

    aget-object v20, v4, v5

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    if-eqz v4, :cond_6

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/SB;->FH()[Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/CC;->Hw()Lcom/google/android/gms/internal/ads/BC;

    move-result-object v4

    :goto_2
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/CC;->v5()Lcom/google/android/gms/internal/ads/BC;

    move-result-object v5

    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/_C;->Hw()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/_C;->DW()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/_C;->v5()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/CC;->Hw:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/BC;->j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v5

    if-nez v5, :cond_15

    move-object v8, v4

    :goto_3
    new-instance v16, Lcom/google/android/gms/internal/ads/_B;

    new-instance v4, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    move-object/from16 v5, v16

    move-object v6, v12

    move-object v7, v4

    move-object v8, v13

    move v9, v14

    move-object v10, v15

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/_B;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/SB;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    goto/16 :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-object v8, v5

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    add-long/2addr v4, v6

    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/uC;->DW()I

    move-result v7

    const/4 v6, 0x1

    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v5, v4, :cond_8

    move v4, v6

    :goto_5
    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/uC;->j6()I

    move-result v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/wC;->j6:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/AC;->DW:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long v8, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/wC;->Zo:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v10

    if-eqz v7, :cond_13

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sub-long v4, v8, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_7
    if-nez p1, :cond_d

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v6

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/TD;->j6(III)I

    move-result v16

    :cond_a
    move/from16 v0, v16

    if-gt v0, v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/sC;->we:Z

    if-eqz v4, :cond_e

    move/from16 v0, v16

    if-lt v0, v5, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v6

    const/4 v4, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_11

    :goto_8
    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    goto/16 :goto_0

    :cond_c
    add-int v4, v7, v6

    add-int/lit8 v5, v4, -0x1

    move v4, v6

    goto :goto_7

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/aC;->v5()I

    move-result v16

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    new-instance v4, Lcom/google/android/gms/internal/ads/kB;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/kB;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/sC;->gn:I

    sub-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/sC;->Hw:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/_C;->Hw()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/_C;->DW()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/_C;->v5()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uC;->DW(I)J

    move-result-wide v12

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uC;->j6(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/CC;->Hw:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    if-nez v4, :cond_f

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uC;->FH(I)J

    move-result-wide v14

    new-instance v19, Lcom/google/android/gms/internal/ads/bC;

    new-instance v4, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v6, v19

    move-object/from16 v7, v22

    move-object v8, v4

    move-object/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v18, v23

    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/bC;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIILcom/google/android/gms/internal/ads/zzfs;)V

    move-object/from16 v4, v19

    :goto_9
    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x1

    const/16 v17, 0x1

    :goto_a
    if-ge v4, v6, :cond_10

    add-int v5, v16, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/uC;->j6(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v5

    invoke-virtual {v8, v5, v7}, Lcom/google/android/gms/internal/ads/BC;->j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v5

    if-eqz v5, :cond_10

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v8, v5

    goto :goto_a

    :cond_10
    add-int v4, v16, v17

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/uC;->FH(I)J

    move-result-wide v14

    new-instance v21, Lcom/google/android/gms/internal/ads/ZB;

    new-instance v4, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/CC;->v5:J

    neg-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    move-object/from16 v20, v0

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object v8, v4

    move-object/from16 v9, v23

    move/from16 v10, v24

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/internal/ads/ZB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIIJLcom/google/android/gms/internal/ads/SB;)V

    move-object/from16 v4, v21

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_13
    move v4, v6

    goto/16 :goto_6

    :cond_14
    move v4, v6

    goto/16 :goto_5

    :cond_15
    move-object v8, v5

    goto/16 :goto_3
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wC;I)V
    .registers 9

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iput p2, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sC;->DW()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/CC;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uC;->j6(JLcom/google/android/gms/internal/ads/CC;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/kB; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/RB;ZLjava/lang/Exception;)Z
    .registers 10

    const/16 v5, 0x194

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/aC;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/google/android/gms/internal/ads/rD;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/rD;

    iget v0, v0, Lcom/google/android/gms/internal/ads/rD;->FH:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uC;->DW()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uC;->j6()I

    move-result v4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aC;->v5()I

    move-result v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/sC;->we:Z

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v4

    instance-of v0, p3, Lcom/google/android/gms/internal/ads/rD;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/rD;

    iget v0, v0, Lcom/google/android/gms/internal/ads/rD;->FH:I

    if-eq v0, v5, :cond_2

    const/16 v5, 0x19a

    if-ne v0, v5, :cond_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    const-wide/32 v0, 0xea60

    invoke-interface {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/_C;->j6(IJ)Z

    move-result v0

    check-cast p3, Lcom/google/android/gms/internal/ads/rD;

    iget v1, p3, Lcom/google/android/gms/internal/ads/rD;->FH:I

    if-eqz v0, :cond_4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Blacklisted: duration=60000, responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ChunkedTrackBlacklist"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Blacklisting failed (cannot blacklist last enabled track): responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ChunkedTrackBlacklist"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method
