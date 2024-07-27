.class final Lcom/google/android/gms/internal/ads/eC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yB;
.implements Lcom/google/android/gms/internal/ads/JB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/yB;",
        "Lcom/google/android/gms/internal/ads/JB",
        "<",
        "Lcom/google/android/gms/internal/ads/WB",
        "<",
        "Lcom/google/android/gms/internal/ads/cC;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/dC;

.field private EQ:[Lcom/google/android/gms/internal/ads/WB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/ads/WB",
            "<",
            "Lcom/google/android/gms/internal/ads/cC;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/eB;

.field private J0:Lcom/google/android/gms/internal/ads/wC;

.field private J8:I

.field private final VH:Lcom/google/android/gms/internal/ads/gD;

.field private Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/vC;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Lcom/google/android/gms/internal/ads/yD;

.field private final gn:Lcom/google/android/gms/internal/ads/NB;

.field final j6:I

.field private tp:Lcom/google/android/gms/internal/ads/zB;

.field private final u7:[Lcom/google/android/gms/internal/ads/fC;

.field private final v5:J

.field private we:Lcom/google/android/gms/internal/ads/mB;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/wC;ILcom/google/android/gms/internal/ads/dC;ILcom/google/android/gms/internal/ads/eB;JLcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/gD;)V
    .registers 38

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/eC;->j6:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/eC;->J0:Lcom/google/android/gms/internal/ads/wC;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/eC;->J8:I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/eC;->DW:Lcom/google/android/gms/internal/ads/dC;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/eC;->FH:I

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/eC;->Hw:Lcom/google/android/gms/internal/ads/eB;

    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/eC;->v5:J

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/eC;->VH:Lcom/google/android/gms/internal/ads/gD;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/WB;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    new-instance v3, Lcom/google/android/gms/internal/ads/mB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/mB;-><init>([Lcom/google/android/gms/internal/ads/IB;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    invoke-virtual/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->Ws:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eC;->Ws:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vC;

    iget v3, v3, Lcom/google/android/gms/internal/ads/vC;->j6:I

    invoke-virtual {v9, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    new-array v6, v8, [[I

    new-array v10, v8, [Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v8, :cond_5

    aget-boolean v3, v10, v7

    if-nez v3, :cond_15

    const/4 v3, 0x1

    aput-boolean v3, v10, v7

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vC;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/vC;->v5:Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zC;

    const-string v12, "urn:mpeg:dash:adaptation-set-switching:2016"

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_3
    if-nez v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v11, 0x0

    aput v7, v4, v11

    aput-object v4, v6, v5

    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v11, v3, [I

    const/4 v3, 0x0

    aput v7, v11, v3

    const/4 v3, 0x0

    :goto_5
    array-length v12, v4

    if-ge v3, v12, :cond_4

    aget-object v12, v4, v3

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    const/4 v13, 0x1

    aput-boolean v13, v10, v12

    add-int/lit8 v3, v3, 0x1

    aput v12, v11, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v5, 0x1

    aput-object v11, v6, v5

    goto :goto_4

    :cond_5
    if-ge v5, v8, :cond_14

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v18, v3

    :goto_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    const/4 v3, 0x0

    move v6, v3

    move/from16 v5, v21

    :goto_7
    move/from16 v0, v21

    if-ge v6, v0, :cond_d

    aget-object v8, v18, v6

    array-length v9, v8

    const/4 v3, 0x0

    move v7, v3

    :goto_8
    if-ge v7, v9, :cond_9

    aget v3, v8, v7

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vC;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_8

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/CC;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/CC;->Zo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_a
    if-eqz v3, :cond_13

    const/4 v3, 0x1

    aput-boolean v3, v23, v6

    add-int/lit8 v3, v5, 0x1

    move v4, v3

    :goto_b
    aget-object v8, v18, v6

    array-length v9, v8

    const/4 v3, 0x0

    move v7, v3

    :goto_c
    if-ge v7, v9, :cond_c

    aget v3, v8, v7

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vC;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/vC;->Hw:Ljava/util/List;

    const/4 v3, 0x0

    move v5, v3

    :goto_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_b

    const-string v11, "urn:scte:dash:cc:cea-608:2015"

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zC;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_6

    const/4 v3, 0x1

    aput-boolean v3, v24, v6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v5, v4

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    goto :goto_e

    :cond_d
    new-array v0, v5, [Lcom/google/android/gms/internal/ads/LB;

    move-object/from16 v25, v0

    new-array v0, v5, [Lcom/google/android/gms/internal/ads/fC;

    move-object/from16 v26, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v20, v3

    :goto_f
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget-object v5, v18, v20

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v8, :cond_e

    aget v3, v5, v4

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vC;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_10

    :cond_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    array-length v3, v10

    if-ge v4, v3, :cond_f

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/CC;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v3, v10, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_11

    :cond_f
    const/4 v3, 0x0

    aget v3, v5, v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/android/gms/internal/ads/vC;

    aget-boolean v8, v23, v20

    aget-boolean v9, v24, v20

    new-instance v3, Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v3, v25, v6

    add-int/lit8 v19, v6, 0x1

    new-instance v3, Lcom/google/android/gms/internal/ads/fC;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/vC;->DW:I

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v3, v26, v6

    if-eqz v8, :cond_12

    move-object/from16 v0, v17

    iget v3, v0, Lcom/google/android/gms/internal/ads/vC;->j6:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x10

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":emsg"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/android/gms/internal/ads/LB;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "application/x-emsg"

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-static {v4, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v3, v25, v19

    add-int/lit8 v3, v19, 0x1

    new-instance v10, Lcom/google/android/gms/internal/ads/fC;

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v10, v26, v19

    move v14, v3

    :goto_12
    if-eqz v9, :cond_11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/google/android/gms/internal/ads/vC;->j6:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x12

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":cea608"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/android/gms/internal/ads/LB;

    const/4 v7, 0x1

    new-array v15, v7, [Lcom/google/android/gms/internal/ads/zzfs;

    const/16 v16, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/cea-608"

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v3, v25, v14

    add-int/lit8 v10, v14, 0x1

    new-instance v3, Lcom/google/android/gms/internal/ads/fC;

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v3, v26, v14

    move v3, v10

    :goto_13
    add-int/lit8 v4, v20, 0x1

    move v6, v3

    move/from16 v20, v4

    goto/16 :goto_f

    :cond_10
    new-instance v3, Lcom/google/android/gms/internal/ads/NB;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/NB;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/fC;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    return-void

    :cond_11
    move v3, v14

    goto :goto_13

    :cond_12
    move/from16 v14, v19

    goto :goto_12

    :cond_13
    move v4, v5

    goto/16 :goto_b

    :cond_14
    move-object/from16 v18, v6

    goto/16 :goto_6

    :cond_15
    move v3, v5

    goto/16 :goto_4
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/HB;)V
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/XB;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/XB;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/XB;->DW()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mB;->DW()J

    move-result-wide v0

    return-wide v0
.end method

.method public final DW(J)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/mB;->DW(J)Z

    move-result v0

    return v0
.end method

.method public final FH(J)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/WB;->v5(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/NB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    return-object v0
.end method

.method public final VH()J
    .registers 13

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v8, v7

    const/4 v6, 0x0

    move-wide v0, v4

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v9, v7, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/WB;->VH()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public final Zo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void
.end method

.method public final j6(J)J
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/WB;->Zo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J
    .registers 26

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v14, v2, :cond_6

    aget-object v2, p3, v14

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/WB;

    if-eqz v2, :cond_1

    aget-object v2, p3, v14

    check-cast v2, Lcom/google/android/gms/internal/ads/WB;

    aget-object v3, p1, v14

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v14

    if-nez v3, :cond_4

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/WB;->gn()V

    const/4 v2, 0x0

    aput-object v2, p3, v14

    :cond_1
    :goto_1
    aget-object v2, p3, v14

    if-nez v2, :cond_3

    aget-object v2, p1, v14

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    aget-object v3, p1, v14

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    aget-object v18, v2, v17

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/fC;->FH:Z

    if-eqz v2, :cond_3

    aget-object v8, p1, v14

    const/4 v2, 0x2

    new-array v3, v2, [I

    move-object/from16 v0, v18

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/fC;->v5:Z

    if-eqz v12, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x4

    aput v4, v3, v2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/fC;->Zo:Z

    if-eqz v13, :cond_2

    const/4 v4, 0x3

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v4, 0x2

    if-ge v2, v4, :cond_f

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v15, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->DW:Lcom/google/android/gms/internal/ads/dC;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eC;->J0:Lcom/google/android/gms/internal/ads/wC;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/eC;->J8:I

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/fC;->j6:[I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/google/android/gms/internal/ads/fC;->DW:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/eC;->v5:J

    invoke-interface/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/dC;->j6(Lcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/wC;I[ILcom/google/android/gms/internal/ads/_C;IJZZ)Lcom/google/android/gms/internal/ads/cC;

    move-result-object v5

    move-object/from16 v0, v18

    iget v3, v0, Lcom/google/android/gms/internal/ads/fC;->DW:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/eC;->VH:Lcom/google/android/gms/internal/ads/gD;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/eC;->FH:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/eC;->Hw:Lcom/google/android/gms/internal/ads/eB;

    new-instance v2, Lcom/google/android/gms/internal/ads/WB;

    move-object v4, v15

    move-object/from16 v6, p0

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/WB;-><init>(I[ILcom/google/android/gms/internal/ads/YB;Lcom/google/android/gms/internal/ads/JB;Lcom/google/android/gms/internal/ads/gD;JILcom/google/android/gms/internal/ads/eB;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, p3, v14

    const/4 v2, 0x1

    aput-boolean v2, p4, v14

    :cond_3
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    aget-object v4, p1, v14

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v5, v2, :cond_e

    aget-object v2, p3, v5

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/XB;

    if-nez v2, :cond_7

    aget-object v2, p3, v5

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/nB;

    if-eqz v2, :cond_9

    :cond_7
    aget-object v2, p1, v5

    if-eqz v2, :cond_8

    aget-boolean v2, p2, v5

    if-nez v2, :cond_9

    :cond_8
    aget-object v2, p3, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/HB;)V

    const/4 v2, 0x0

    aput-object v2, p3, v5

    :cond_9
    aget-object v2, p1, v5

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    aget-object v3, p1, v5

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    aget-object v6, v3, v2

    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/fC;->FH:Z

    if-nez v2, :cond_a

    iget v2, v6, Lcom/google/android/gms/internal/ads/fC;->Hw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/WB;

    aget-object v4, p3, v5

    if-nez v2, :cond_b

    instance-of v3, v4, Lcom/google/android/gms/internal/ads/nB;

    :goto_5
    if-nez v3, :cond_a

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/HB;)V

    if-nez v2, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/ads/nB;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/nB;-><init>()V

    :goto_6
    aput-object v2, p3, v5

    const/4 v2, 0x1

    aput-boolean v2, p4, v5

    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_b
    instance-of v3, v4, Lcom/google/android/gms/internal/ads/XB;

    if-eqz v3, :cond_c

    move-object v3, v4

    check-cast v3, Lcom/google/android/gms/internal/ads/XB;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/XB;->j6:Lcom/google/android/gms/internal/ads/WB;

    if-ne v3, v2, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    iget v3, v6, Lcom/google/android/gms/internal/ads/fC;->DW:I

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/WB;->j6(JI)Lcom/google/android/gms/internal/ads/XB;

    move-result-object v2

    goto :goto_6

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/WB;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/mB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/mB;-><init>([Lcom/google/android/gms/internal/ads/IB;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    return-wide p5

    :cond_f
    move-object v15, v3

    goto/16 :goto_3
.end method

.method public final j6()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/WB;->gn()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/IB;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->tp:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wC;I)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eC;->J0:Lcom/google/android/gms/internal/ads/wC;

    iput p2, p0, Lcom/google/android/gms/internal/ads/eC;->J8:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->Ws:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/WB;->tp()Lcom/google/android/gms/internal/ads/YB;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cC;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cC;->j6(Lcom/google/android/gms/internal/ads/wC;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->tp:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_1
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zB;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eC;->tp:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zB;->j6(Lcom/google/android/gms/internal/ads/yB;)V

    return-void
.end method

.method public final v5()J
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
