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
    .registers 27

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/sC;->j6:Lcom/google/android/gms/internal/ads/yD;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/sC;->DW:[I

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    move/from16 v3, p6

    iput v3, v0, Lcom/google/android/gms/internal/ads/sC;->Hw:I

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    move/from16 v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    move-wide/from16 v4, p8

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    move/from16 v4, p10

    iput v4, v0, Lcom/google/android/gms/internal/ads/sC;->gn:I

    invoke-virtual/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sC;->DW()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/uC;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    array-length v2, v2

    if-ge v11, v2, :cond_5b

    invoke-interface {v1, v11}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/CC;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    new-instance v13, Lcom/google/android/gms/internal/ads/uC;

    move-object v2, v13

    move-wide v3, v8

    move/from16 v6, p11

    move/from16 v7, p12

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/uC;-><init>(JLcom/google/android/gms/internal/ads/CC;ZZ)V

    aput-object v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_5b
    return-void
.end method

.method private final DW()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/CC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sC;->DW:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_25

    aget v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/vC;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_25
    return-object v1
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->j6:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void

    :cond_a
    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/RB;)V
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/_B;

    if-eqz v0, :cond_27

    check-cast p1, Lcom/google/android/gms/internal/ads/_B;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result p1

    aget-object p1, v0, p1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/SB;->DW()Lcom/google/android/gms/internal/ads/Wz;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Lcom/google/android/gms/internal/ads/rC;

    check-cast v0, Lcom/google/android/gms/internal/ads/Lz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/rC;-><init>(Lcom/google/android/gms/internal/ads/Lz;)V

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    :cond_27
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/aC;JLcom/google/android/gms/internal/ads/VB;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    if-eqz v5, :cond_d

    return-void

    :cond_d
    const-wide/16 v5, 0x0

    if-eqz v1, :cond_15

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/RB;->VH:J

    sub-long/2addr v7, v2

    goto :goto_16

    :cond_15
    move-wide v7, v5

    :goto_16
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v9, v7, v8}, Lcom/google/android/gms/internal/ads/_C;->j6(J)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/_C;->j6()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    if-eqz v8, :cond_8e

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/SB;->FH()[Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v8

    const/4 v10, 0x0

    if-nez v8, :cond_37

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/CC;->Hw()Lcom/google/android/gms/internal/ads/BC;

    move-result-object v8

    goto :goto_38

    :cond_37
    move-object v8, v10

    :goto_38
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    if-nez v11, :cond_40

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/CC;->v5()Lcom/google/android/gms/internal/ads/BC;

    move-result-object v10

    :cond_40
    if-nez v8, :cond_44

    if-eqz v10, :cond_8e

    :cond_44
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_C;->Hw()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v14

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_C;->DW()I

    move-result v15

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_C;->v5()Ljava/lang/Object;

    move-result-object v16

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/CC;->Hw:Ljava/lang/String;

    if-eqz v8, :cond_67

    invoke-virtual {v8, v10, v1}, Lcom/google/android/gms/internal/ads/BC;->j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v2

    if-nez v2, :cond_65

    goto :goto_68

    :cond_65
    move-object v8, v2

    goto :goto_68

    :cond_67
    move-object v8, v10

    :goto_68
    new-instance v2, Lcom/google/android/gms/internal/ads/_B;

    new-instance v13, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    iget-wide v5, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v13

    move-wide/from16 v19, v5

    move-wide/from16 v21, v8

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    move-object v11, v2

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/_B;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/SB;)V

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    return-void

    :cond_8e
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    cmp-long v10, v8, v5

    if-eqz v10, :cond_9c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/sC;->VH:J

    add-long/2addr v5, v8

    goto :goto_a0

    :cond_9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_a0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uC;->DW()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_bb

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v2, :cond_b7

    iget v2, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v1

    sub-int/2addr v1, v10

    if-ge v2, v1, :cond_b8

    :cond_b7
    const/4 v9, 0x1

    :cond_b8
    iput-boolean v9, v4, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    return-void

    :cond_bb
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uC;->j6()I

    move-result v11

    const/4 v12, -0x1

    if-ne v8, v12, :cond_f7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    const-wide/16 v12, 0x3e8

    mul-long v5, v5, v12

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/wC;->j6:J

    mul-long v14, v14, v12

    sub-long/2addr v5, v14

    iget v14, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v8

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/AC;->DW:J

    mul-long v14, v14, v12

    sub-long/2addr v5, v14

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/wC;->Zo:J

    const-wide v16, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v8, v14, v16

    if-eqz v8, :cond_f1

    mul-long v14, v14, v12

    sub-long v12, v5, v14

    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_f1
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v5

    sub-int/2addr v5, v10

    goto :goto_fa

    :cond_f7
    add-int/2addr v8, v11

    add-int/lit8 v5, v8, -0x1

    :goto_fa
    if-nez v1, :cond_105

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/ads/uC;->j6(J)I

    move-result v1

    invoke-static {v1, v11, v5}, Lcom/google/android/gms/internal/ads/TD;->j6(III)I

    move-result v1

    goto :goto_113

    :cond_105
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/aC;->v5()I

    move-result v1

    if-ge v1, v11, :cond_113

    new-instance v1, Lcom/google/android/gms/internal/ads/kB;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/kB;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    return-void

    :cond_113
    :goto_113
    move v15, v1

    if-gt v15, v5, :cond_1da

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sC;->we:Z

    if-eqz v1, :cond_11e

    if-lt v15, v5, :cond_11e

    goto/16 :goto_1da

    :cond_11e
    iget v1, v0, Lcom/google/android/gms/internal/ads/sC;->gn:I

    sub-int/2addr v5, v15

    add-int/2addr v5, v10

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sC;->Zo:Lcom/google/android/gms/internal/ads/iD;

    iget v2, v0, Lcom/google/android/gms/internal/ads/sC;->Hw:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/_C;->Hw()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/_C;->DW()I

    move-result v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/_C;->v5()Ljava/lang/Object;

    move-result-object v11

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/uC;->DW(I)J

    move-result-wide v12

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/uC;->j6(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v8

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/CC;->Hw:Ljava/lang/String;

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    if-nez v10, :cond_17e

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/uC;->FH(I)J

    move-result-wide v16

    new-instance v1, Lcom/google/android/gms/internal/ads/bC;

    new-instance v7, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move/from16 p1, v15

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    move-wide/from16 p2, v12

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v18, v7

    move-wide/from16 v20, v14

    move-wide/from16 v22, v12

    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v5, v1

    move-object v8, v3

    move-object v10, v11

    move-wide/from16 v11, p2

    move-wide/from16 v13, v16

    move/from16 v15, p1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v17}, Lcom/google/android/gms/internal/ads/bC;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIILcom/google/android/gms/internal/ads/zzfs;)V

    goto :goto_1d7

    :cond_17e
    move-wide/from16 p2, v12

    move/from16 p1, v15

    const/4 v2, 0x1

    const/16 v17, 0x1

    :goto_185
    if-ge v2, v1, :cond_199

    add-int v15, p1, v2

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/uC;->j6(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v10

    invoke-virtual {v8, v10, v14}, Lcom/google/android/gms/internal/ads/BC;->j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v10

    if-eqz v10, :cond_199

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v8, v10

    goto :goto_185

    :cond_199
    add-int v15, p1, v17

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/uC;->FH(I)J

    move-result-wide v1

    new-instance v20, Lcom/google/android/gms/internal/ads/ZB;

    new-instance v10, Lcom/google/android/gms/internal/ads/mD;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/BC;->j6(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/BC;->DW:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/CC;->FH()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v21, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    invoke-direct/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/CC;->v5:J

    neg-long v13, v12

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    move-object/from16 v5, v20

    move-object v7, v10

    move-object v8, v3

    move-object v10, v11

    move-wide/from16 v11, p2

    move-wide/from16 v18, v13

    move-wide v13, v1

    move-object v1, v15

    move/from16 v15, p1

    move/from16 v16, v17

    move-wide/from16 v17, v18

    move-object/from16 v19, v1

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/ads/ZB;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJIIJLcom/google/android/gms/internal/ads/SB;)V

    move-object/from16 v1, v20

    :goto_1d7
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    return-void

    :cond_1da
    :goto_1da
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v2, :cond_1eb

    iget v2, v0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge v2, v1, :cond_1ed

    goto :goto_1ec

    :cond_1eb
    const/4 v3, 0x1

    :goto_1ec
    const/4 v9, 0x1

    :cond_1ed
    iput-boolean v9, v4, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wC;I)V
    .registers 7

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iput p2, p0, Lcom/google/android/gms/internal/ads/sC;->tp:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sC;->DW()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    array-length v2, v2

    if-ge v1, v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/CC;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, v2}, Lcom/google/android/gms/internal/ads/uC;->j6(JLcom/google/android/gms/internal/ads/CC;)V
    :try_end_25
    .catch Lcom/google/android/gms/internal/ads/kB; {:try_start_0 .. :try_end_25} :catch_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_28
    return-void

    :catch_29
    move-exception p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sC;->EQ:Ljava/io/IOException;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/RB;ZLjava/lang/Exception;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sC;->u7:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    const/16 v1, 0x194

    const/4 v2, 0x1

    if-nez p2, :cond_43

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/aC;

    if-eqz p2, :cond_43

    instance-of p2, p3, Lcom/google/android/gms/internal/ads/rD;

    if-eqz p2, :cond_43

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/rD;

    iget p2, p2, Lcom/google/android/gms/internal/ads/rD;->FH:I

    if-ne p2, v1, :cond_43

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sC;->v5:[Lcom/google/android/gms/internal/ads/uC;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v3

    aget-object p2, p2, v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/uC;->DW()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    if-eqz v3, :cond_43

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/uC;->j6()I

    move-result p2

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/aC;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/aC;->v5()I

    move-result v4

    add-int/2addr p2, v3

    sub-int/2addr p2, v2

    if-le v4, p2, :cond_43

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/sC;->we:Z

    return v2

    :cond_43
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sC;->FH:Lcom/google/android/gms/internal/ads/_C;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/_C;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result p1

    instance-of v3, p3, Lcom/google/android/gms/internal/ads/rD;

    if-eqz v3, :cond_5b

    move-object v3, p3

    check-cast v3, Lcom/google/android/gms/internal/ads/rD;

    iget v3, v3, Lcom/google/android/gms/internal/ads/rD;->FH:I

    if-eq v3, v1, :cond_5c

    const/16 v1, 0x19a

    if-ne v3, v1, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :cond_5c
    :goto_5c
    if-eqz v2, :cond_a3

    const-wide/32 v0, 0xea60

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/_C;->j6(IJ)Z

    move-result v0

    check-cast p3, Lcom/google/android/gms/internal/ads/rD;

    iget p3, p3, Lcom/google/android/gms/internal/ads/rD;->FH:I

    const-string v1, "ChunkedTrackBlacklist"

    const-string v2, ", format="

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v0, :cond_89

    add-int/lit8 v3, v3, 0x4d

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Blacklisted: duration=60000, responseCode="

    goto :goto_90

    :cond_89
    add-int/lit8 v3, v3, 0x5c

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Blacklisting failed (cannot blacklist last enabled track): responseCode="

    :goto_90
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return v0
.end method
