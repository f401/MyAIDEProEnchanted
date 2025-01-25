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
        "Lcom/google/android/gms/internal/ads/JB<",
        "Lcom/google/android/gms/internal/ads/WB<",
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
            "Lcom/google/android/gms/internal/ads/WB<",
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
            "Ljava/util/List<",
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
    .registers 41

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/eC;->j6:I

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/eC;->J0:Lcom/google/android/gms/internal/ads/wC;

    move/from16 v2, p3

    iput v2, v0, Lcom/google/android/gms/internal/ads/eC;->J8:I

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->DW:Lcom/google/android/gms/internal/ads/dC;

    move/from16 v3, p5

    iput v3, v0, Lcom/google/android/gms/internal/ads/eC;->FH:I

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->Hw:Lcom/google/android/gms/internal/ads/eB;

    move-wide/from16 v3, p7

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/eC;->v5:J

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/eC;->VH:Lcom/google/android/gms/internal/ads/gD;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/WB;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    new-instance v5, Lcom/google/android/gms/internal/ads/mB;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/mB;-><init>([Lcom/google/android/gms/internal/ads/IB;)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    invoke-virtual/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/eC;->Ws:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v5, 0x0

    :goto_47
    if-ge v5, v2, :cond_57

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/vC;

    iget v6, v6, Lcom/google/android/gms/internal/ads/vC;->j6:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_57
    new-array v5, v2, [[I

    new-array v6, v2, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5d
    const/4 v10, 0x1

    if-ge v7, v2, :cond_c2

    aget-boolean v11, v6, v7

    if-nez v11, :cond_bf

    aput-boolean v10, v6, v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/vC;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/vC;->v5:Ljava/util/List;

    const/4 v12, 0x0

    :goto_6f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_8a

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zC;

    const-string v14, "urn:mpeg:dash:adaptation-set-switching:2016"

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_87

    move-object v9, v13

    goto :goto_8b

    :cond_87
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    :cond_8a
    const/4 v9, 0x0

    :goto_8b
    if-nez v9, :cond_97

    add-int/lit8 v9, v8, 0x1

    filled-new-array {v7}, [I

    move-result-object v10

    aput-object v10, v5, v8

    :goto_95
    move v8, v9

    goto :goto_bf

    :cond_97
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    add-int/2addr v11, v10

    new-array v11, v11, [I

    aput v7, v11, v3

    const/4 v12, 0x0

    :goto_a6
    array-length v13, v9

    if-ge v12, v13, :cond_ba

    aget-object v13, v9, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    aput-boolean v10, v6, v13

    add-int/lit8 v12, v12, 0x1

    aput v13, v11, v12

    goto :goto_a6

    :cond_ba
    add-int/lit8 v9, v8, 0x1

    aput-object v11, v5, v8

    goto :goto_95

    :cond_bf
    :goto_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_c2
    if-ge v8, v2, :cond_cb

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [[I

    :cond_cb
    array-length v2, v5

    new-array v4, v2, [Z

    new-array v6, v2, [Z

    move v8, v2

    const/4 v7, 0x0

    :goto_d2
    if-ge v7, v2, :cond_144

    aget-object v11, v5, v7

    array-length v12, v11

    const/4 v13, 0x0

    :goto_d8
    if-ge v13, v12, :cond_101

    aget v14, v11, v13

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/vC;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    const/4 v15, 0x0

    :goto_e5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    if-ge v15, v9, :cond_fe

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/CC;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/CC;->Zo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_fb

    const/4 v9, 0x1

    goto :goto_102

    :cond_fb
    add-int/lit8 v15, v15, 0x1

    goto :goto_e5

    :cond_fe
    add-int/lit8 v13, v13, 0x1

    goto :goto_d8

    :cond_101
    const/4 v9, 0x0

    :goto_102
    if-eqz v9, :cond_108

    aput-boolean v10, v4, v7

    add-int/lit8 v8, v8, 0x1

    :cond_108
    aget-object v9, v5, v7

    array-length v11, v9

    const/4 v12, 0x0

    :goto_10c
    if-ge v12, v11, :cond_139

    aget v13, v9, v12

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/vC;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/vC;->Hw:Ljava/util/List;

    const/4 v14, 0x0

    :goto_119
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_135

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zC;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    const/4 v3, 0x1

    goto :goto_13a

    :cond_131
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_119

    :cond_135
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_10c

    :cond_139
    const/4 v3, 0x0

    :goto_13a
    if-eqz v3, :cond_140

    aput-boolean v10, v6, v7

    add-int/lit8 v8, v8, 0x1

    :cond_140
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_d2

    :cond_144
    new-array v3, v8, [Lcom/google/android/gms/internal/ads/LB;

    new-array v7, v8, [Lcom/google/android/gms/internal/ads/fC;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14a
    if-ge v8, v2, :cond_254

    aget-object v15, v5, v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v15

    const/4 v13, 0x0

    :goto_155
    if-ge v13, v12, :cond_167

    aget v14, v15, v13

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/vC;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/vC;->FH:Ljava/util/List;

    invoke-interface {v11, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_155

    :cond_167
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v14, 0x0

    :goto_16e
    if-ge v14, v12, :cond_180

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/google/android/gms/internal/ads/CC;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v10, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_16e

    :cond_180
    const/4 v10, 0x0

    aget v11, v15, v10

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/vC;

    aget-boolean v18, v4, v8

    aget-boolean v19, v6, v8

    new-instance v11, Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v11, v3, v9

    add-int/lit8 v20, v9, 0x1

    new-instance v21, Lcom/google/android/gms/internal/ads/fC;

    iget v12, v10, Lcom/google/android/gms/internal/ads/vC;->DW:I

    const/16 v16, 0x1

    move-object/from16 v11, v21

    move-object v13, v15

    move v14, v9

    move-object/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v21, v7, v9

    if-eqz v18, :cond_1f2

    iget v11, v10, Lcom/google/android/gms/internal/ads/vC;->j6:I

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x10

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":emsg"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lcom/google/android/gms/internal/ads/LB;

    const/4 v13, 0x1

    new-array v14, v13, [Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "application/x-emsg"

    const/4 v15, -0x1

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v12, v13, v1, v15, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v11, v3, v20

    add-int/lit8 v21, v20, 0x1

    new-instance v23, Lcom/google/android/gms/internal/ads/fC;

    const/4 v12, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move-object/from16 v13, v22

    move v14, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v23, v7, v20

    move/from16 v20, v21

    goto :goto_1f5

    :cond_1f2
    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_1f5
    if-eqz v19, :cond_247

    iget v10, v10, Lcom/google/android/gms/internal/ads/vC;->j6:I

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":cea608"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/google/android/gms/internal/ads/LB;

    const/4 v15, 0x1

    new-array v12, v15, [Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "application/cea-608"

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v11

    const/16 v19, 0x0

    aput-object v11, v12, v19

    invoke-direct {v10, v12}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v10, v3, v20

    add-int/lit8 v10, v20, 0x1

    new-instance v21, Lcom/google/android/gms/internal/ads/fC;

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move v14, v9

    const/4 v9, 0x1

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v23

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/fC;-><init>(I[IIZZZ)V

    aput-object v21, v7, v20

    goto :goto_24c

    :cond_247
    const/4 v9, 0x1

    const/16 v19, 0x0

    move/from16 v10, v20

    :goto_24c
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move-object/from16 v1, v18

    const/4 v10, 0x1

    goto/16 :goto_14a

    :cond_254
    new-instance v1, Lcom/google/android/gms/internal/ads/NB;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    invoke-static {v1, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/NB;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/fC;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/HB;)V
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/XB;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/android/gms/internal/ads/XB;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/XB;->DW()V

    :cond_9
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

    move-result p1

    return p1
.end method

.method public final FH(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/WB;->v5(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/NB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    return-object v0
.end method

.method public final VH()J
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v1, v0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v2, v1, :cond_1f

    aget-object v9, v0, v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/WB;->VH()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v3

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method

.method public final Zo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void
.end method

.method public final j6(J)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/WB;->Zo(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-wide p1
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J
    .registers 36

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p5

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x0

    const/4 v9, 0x0

    :goto_d
    array-length v0, v11

    const/4 v1, 0x0

    const/16 v16, 0x1

    if-ge v9, v0, :cond_c0

    aget-object v0, p3, v9

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/WB;

    if-eqz v2, :cond_3b

    check-cast v0, Lcom/google/android/gms/internal/ads/WB;

    aget-object v2, v11, v9

    if-eqz v2, :cond_36

    aget-boolean v3, p2, v9

    if-nez v3, :cond_24

    goto :goto_36

    :cond_24
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_36
    :goto_36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/WB;->gn()V

    aput-object v1, p3, v9

    :cond_3b
    :goto_3b
    aget-object v0, p3, v9

    if-nez v0, :cond_b8

    aget-object v0, v11, v9

    if-eqz v0, :cond_b8

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v17

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    aget-object v0, v0, v17

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/fC;->FH:Z

    if-eqz v1, :cond_b8

    aget-object v23, v11, v9

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/fC;->v5:Z

    if-eqz v3, :cond_63

    const/4 v4, 0x4

    aput v4, v2, v15

    const/4 v4, 0x1

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    :goto_64
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/fC;->Zo:Z

    if-eqz v5, :cond_6d

    const/4 v6, 0x3

    aput v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_6d
    if-ge v4, v1, :cond_74

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v2, v1

    :cond_74
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/eC;->DW:Lcom/google/android/gms/internal/ads/dC;

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/eC;->Zo:Lcom/google/android/gms/internal/ads/yD;

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/eC;->J0:Lcom/google/android/gms/internal/ads/wC;

    iget v7, v10, Lcom/google/android/gms/internal/ads/eC;->J8:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/fC;->j6:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/fC;->DW:I

    iget-wide v12, v10, Lcom/google/android/gms/internal/ads/eC;->v5:J

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v24, v15

    move-wide/from16 v25, v12

    move/from16 v27, v3

    move/from16 v28, v5

    invoke-interface/range {v18 .. v28}, Lcom/google/android/gms/internal/ads/dC;->j6(Lcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/wC;I[ILcom/google/android/gms/internal/ads/_C;IJZZ)Lcom/google/android/gms/internal/ads/cC;

    move-result-object v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/fC;->DW:I

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/eC;->VH:Lcom/google/android/gms/internal/ads/gD;

    iget v8, v10, Lcom/google/android/gms/internal/ads/eC;->FH:I

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/eC;->Hw:Lcom/google/android/gms/internal/ads/eB;

    new-instance v13, Lcom/google/android/gms/internal/ads/WB;

    move-object v0, v13

    move-object/from16 v4, p0

    move-wide/from16 v6, p5

    move v15, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/WB;-><init>(I[ILcom/google/android/gms/internal/ads/YB;Lcom/google/android/gms/internal/ads/JB;Lcom/google/android/gms/internal/ads/gD;JILcom/google/android/gms/internal/ads/eB;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v13, p3, v15

    aput-boolean v16, p4, v15

    goto :goto_b9

    :cond_b8
    move v15, v9

    :goto_b9
    add-int/lit8 v9, v15, 0x1

    move-wide/from16 v12, p5

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_c0
    const/4 v0, 0x0

    :goto_c1
    array-length v2, v11

    if-ge v0, v2, :cond_133

    aget-object v2, p3, v0

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/XB;

    if-nez v3, :cond_ce

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/nB;

    if-eqz v3, :cond_db

    :cond_ce
    aget-object v3, v11, v0

    if-eqz v3, :cond_d6

    aget-boolean v3, p2, v0

    if-nez v3, :cond_db

    :cond_d6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/HB;)V

    aput-object v1, p3, v0

    :cond_db
    aget-object v2, v11, v0

    if-eqz v2, :cond_12e

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/eC;->gn:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/eC;->u7:[Lcom/google/android/gms/internal/ads/fC;

    aget-object v2, v3, v2

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/fC;->FH:Z

    if-nez v3, :cond_12e

    iget v3, v2, Lcom/google/android/gms/internal/ads/fC;->Hw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/WB;

    aget-object v4, p3, v0

    if-nez v3, :cond_104

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/nB;

    goto :goto_112

    :cond_104
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/XB;

    if-eqz v5, :cond_111

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/XB;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/XB;->j6:Lcom/google/android/gms/internal/ads/WB;

    if-ne v5, v3, :cond_111

    const/4 v5, 0x1

    goto :goto_112

    :cond_111
    const/4 v5, 0x0

    :goto_112
    if-nez v5, :cond_12e

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/HB;)V

    if-nez v3, :cond_121

    new-instance v2, Lcom/google/android/gms/internal/ads/nB;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/nB;-><init>()V

    move-wide/from16 v4, p5

    goto :goto_129

    :cond_121
    iget v2, v2, Lcom/google/android/gms/internal/ads/fC;->DW:I

    move-wide/from16 v4, p5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/WB;->j6(JI)Lcom/google/android/gms/internal/ads/XB;

    move-result-object v2

    :goto_129
    aput-object v2, p3, v0

    aput-boolean v16, p4, v0

    goto :goto_130

    :cond_12e
    move-wide/from16 v4, p5

    :goto_130
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_133
    move-wide/from16 v4, p5

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/WB;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/mB;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mB;-><init>([Lcom/google/android/gms/internal/ads/IB;)V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/eC;->we:Lcom/google/android/gms/internal/ads/mB;

    return-wide v4
.end method

.method public final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/WB;->gn()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/IB;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eC;->tp:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eC;->EQ:[Lcom/google/android/gms/internal/ads/WB;

    if-eqz v0, :cond_27

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/WB;->tp()Lcom/google/android/gms/internal/ads/YB;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/cC;

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/cC;->j6(Lcom/google/android/gms/internal/ads/wC;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eC;->tp:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_27
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

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    return-wide v0
.end method
