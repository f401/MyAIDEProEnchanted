.class public final Lcom/google/android/gms/internal/ads/UC;
.super Lcom/google/android/gms/internal/ads/XC;


# static fields
.field private static final Zo:[I


# instance fields
.field private final VH:Lcom/google/android/gms/internal/ads/aD;

.field private final gn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/VC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/UC;->Zo:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UC;-><init>(Lcom/google/android/gms/internal/ads/aD;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/aD;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/XC;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/UC;->VH:Lcom/google/android/gms/internal/ads/aD;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/VC;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/VC;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/UC;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static DW(IZ)Z
    .registers 4

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;
    .registers 38

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/_C;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/UC;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/VC;

    const/16 v20, 0x0

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1f

    const/4 v3, 0x2

    aget-object v4, p1, v20

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v4

    if-ne v3, v4, :cond_1e

    if-nez v5, :cond_1d

    aget-object v23, p2, v20

    aget-object v24, p3, v20

    iget v0, v2, Lcom/google/android/gms/internal/ads/VC;->v5:I

    move/from16 v25, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/VC;->Zo:I

    move/from16 v26, v0

    iget v14, v2, Lcom/google/android/gms/internal/ads/VC;->VH:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/VC;->tp:I

    iget v0, v2, Lcom/google/android/gms/internal/ads/VC;->EQ:I

    move/from16 v16, v0

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/VC;->we:Z

    iget-boolean v11, v2, Lcom/google/android/gms/internal/ads/VC;->gn:Z

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    move/from16 v27, v0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v7, -0x1

    move-object v6, v3

    move v9, v4

    move v12, v11

    :goto_1
    move-object/from16 v0, v23

    iget v3, v0, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v13, v3, :cond_1a

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v4

    new-instance v28, Ljava/util/ArrayList;

    iget v3, v4, Lcom/google/android/gms/internal/ads/LB;->j6:I

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    iget v11, v4, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v3, v11, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    const v3, 0x7fffffff

    const v11, 0x7fffffff

    if-eq v15, v11, :cond_1

    const v11, 0x7fffffff

    move/from16 v0, v16

    if-ne v0, v11, :cond_a

    :cond_1
    move-object v3, v6

    move v11, v9

    :goto_3
    aget-object v22, v24, v13

    const/4 v9, 0x0

    :goto_4
    iget v6, v4, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v9, v6, :cond_19

    aget v6, v22, v9

    move/from16 v0, v27

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v29

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v0, v29

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_2

    move/from16 v0, v25

    if-gt v6, v0, :cond_13

    :cond_2
    move-object/from16 v0, v29

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    move/from16 v0, v26

    if-gt v6, v0, :cond_13

    :cond_3
    move-object/from16 v0, v29

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_4

    if-gt v6, v14, :cond_13

    :cond_4
    const/4 v6, 0x1

    move/from16 v18, v6

    :goto_5
    if-nez v18, :cond_5

    if-eqz v12, :cond_9

    :cond_5
    if-eqz v18, :cond_14

    const/4 v6, 0x2

    :goto_6
    aget v17, v22, v9

    const/16 v30, 0x0

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v30

    if-eqz v30, :cond_6

    add-int/lit16 v6, v6, 0x3e8

    :cond_6
    if-le v6, v5, :cond_15

    const/16 v17, 0x1

    :goto_7
    if-ne v6, v5, :cond_8

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v10, :cond_16

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/UC;->j6(II)I

    move-result v17

    :goto_8
    if-eqz v30, :cond_17

    if-eqz v18, :cond_17

    if-lez v17, :cond_18

    :cond_7
    const/16 v17, 0x1

    :cond_8
    :goto_9
    if-eqz v17, :cond_9

    move-object/from16 v0, v29

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v10

    move-object v3, v4

    move v5, v6

    move v8, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_a
    const/16 v17, 0x0

    move v11, v3

    :goto_a
    iget v3, v4, Lcom/google/android/gms/internal/ads/LB;->j6:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move/from16 v30, v0

    if-lez v30, :cond_f

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move/from16 v31, v0

    if-lez v31, :cond_f

    if-eqz v9, :cond_d

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_b

    const/4 v3, 0x1

    move/from16 v18, v3

    :goto_b
    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v3, 0x1

    :goto_c
    move/from16 v0, v18

    if-eq v0, v3, :cond_d

    move/from16 v18, v16

    move/from16 v22, v15

    :goto_d
    mul-int v32, v30, v22

    mul-int v33, v31, v18

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_e

    new-instance v3, Landroid/graphics/Point;

    move/from16 v0, v33

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_e
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move/from16 v22, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move/from16 v29, v0

    mul-int v18, v22, v29

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3f7ae148    # 0.98f

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-lt v0, v1, :cond_44

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v22, 0x3f7ae148    # 0.98f

    mul-float v3, v3, v22

    float-to-int v3, v3

    move/from16 v0, v29

    if-lt v0, v3, :cond_44

    move/from16 v0, v18

    if-ge v0, v11, :cond_44

    move/from16 v3, v18

    :goto_f
    add-int/lit8 v17, v17, 0x1

    move v11, v3

    goto/16 :goto_a

    :cond_b
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    :cond_d
    move/from16 v18, v15

    move/from16 v22, v16

    goto :goto_d

    :cond_e
    new-instance v3, Landroid/graphics/Point;

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_e

    :cond_f
    move v3, v11

    goto :goto_f

    :cond_10
    const v3, 0x7fffffff

    if-eq v11, v3, :cond_43

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v17, v3

    :goto_10
    if-ltz v17, :cond_43

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_11

    if-le v3, v11, :cond_12

    :cond_11
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v3, v17, -0x1

    move/from16 v17, v3

    goto :goto_10

    :cond_13
    const/4 v6, 0x0

    move/from16 v18, v6

    goto/16 :goto_5

    :cond_14
    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/UC;->j6(II)I

    move-result v17

    goto/16 :goto_8

    :cond_17
    if-ltz v17, :cond_7

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v4, v13, 0x1

    move-object v6, v3

    move v9, v11

    move v13, v4

    goto/16 :goto_1

    :cond_1a
    if-nez v6, :cond_1b

    const/4 v3, 0x0

    :goto_11
    aput-object v3, v19, v20

    aget-object v3, v19, v20

    if-eqz v3, :cond_1c

    const/4 v5, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    :goto_12
    aget-object v6, p2, v4

    iget v6, v6, Lcom/google/android/gms/internal/ads/NB;->DW:I

    :goto_13
    add-int/lit8 v20, v4, 0x1

    move-object/from16 v19, v3

    goto/16 :goto_0

    :cond_1b
    new-instance v3, Lcom/google/android/gms/internal/ads/WC;

    invoke-direct {v3, v6, v8}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    goto :goto_11

    :cond_1c
    const/4 v5, 0x0

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_12

    :cond_1d
    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_12

    :cond_1e
    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_13

    :cond_1f
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    move v13, v3

    move/from16 v5, v21

    :goto_14
    if-ge v13, v5, :cond_41

    aget-object v3, p1, v13

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_36

    const/4 v4, 0x2

    if-eq v3, v4, :cond_26

    const/4 v4, 0x3

    if-eq v3, v4, :cond_28

    aget-object v3, p1, v13

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    aget-object v14, p2, v13

    aget-object v15, p3, v13

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    move/from16 v16, v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v9, v4

    move v10, v5

    :goto_15
    iget v4, v14, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v9, v4, :cond_25

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v4

    aget-object v17, v15, v9

    const/4 v8, 0x0

    :goto_16
    iget v5, v4, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v8, v5, :cond_24

    aget v5, v17, v8

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    :goto_17
    if-eqz v5, :cond_22

    const/4 v5, 0x2

    :goto_18
    aget v18, v17, v8

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v18

    if-eqz v18, :cond_20

    add-int/lit16 v5, v5, 0x3e8

    :cond_20
    if-le v5, v6, :cond_42

    move-object v3, v4

    move v7, v8

    :goto_19
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    goto :goto_16

    :cond_21
    const/4 v5, 0x0

    goto :goto_17

    :cond_22
    const/4 v5, 0x1

    goto :goto_18

    :cond_23
    move v5, v6

    goto :goto_19

    :cond_24
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_15

    :cond_25
    if-nez v3, :cond_27

    const/4 v3, 0x0

    :goto_1a
    aput-object v3, v19, v13

    move v5, v10

    :cond_26
    move v3, v11

    move v4, v12

    :goto_1b
    add-int/lit8 v6, v13, 0x1

    move v11, v3

    move v13, v6

    move v12, v4

    goto :goto_14

    :cond_27
    new-instance v4, Lcom/google/android/gms/internal/ads/WC;

    invoke-direct {v4, v3, v7}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    move-object v3, v4

    goto :goto_1a

    :cond_28
    if-nez v11, :cond_26

    aget-object v14, p2, v13

    aget-object v15, p3, v13

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    move/from16 v16, v0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v11, v6

    :goto_1c
    iget v6, v14, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v11, v6, :cond_33

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v10

    aget-object v17, v15, v11

    const/4 v6, 0x0

    :goto_1d
    iget v8, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v6, v8, :cond_32

    aget v8, v17, v6

    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v18

    move-object/from16 v0, v18

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    :goto_1e
    move-object/from16 v0, v18

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2c

    const/4 v9, 0x1

    :goto_1f
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2f

    if-eqz v8, :cond_2d

    const/4 v8, 0x6

    :goto_20
    aget v9, v17, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v9

    if-eqz v9, :cond_29

    add-int/lit16 v8, v8, 0x3e8

    :cond_29
    if-le v8, v7, :cond_2a

    move-object v3, v10

    move v7, v8

    move v4, v6

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v8, 0x0

    goto :goto_1e

    :cond_2c
    const/4 v9, 0x0

    goto :goto_1f

    :cond_2d
    if-nez v9, :cond_2e

    const/4 v8, 0x5

    goto :goto_20

    :cond_2e
    const/4 v8, 0x4

    goto :goto_20

    :cond_2f
    if-eqz v8, :cond_30

    const/4 v8, 0x3

    goto :goto_20

    :cond_30
    if-eqz v9, :cond_2a

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    const/4 v8, 0x2

    goto :goto_20

    :cond_31
    const/4 v8, 0x1

    goto :goto_20

    :cond_32
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    goto :goto_1c

    :cond_33
    if-nez v3, :cond_34

    const/4 v3, 0x0

    :goto_21
    aput-object v3, v19, v13

    aget-object v3, v19, v13

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    :goto_22
    move v4, v12

    goto/16 :goto_1b

    :cond_34
    new-instance v6, Lcom/google/android/gms/internal/ads/WC;

    invoke-direct {v6, v3, v4}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    move-object v3, v6

    goto :goto_21

    :cond_35
    const/4 v3, 0x0

    goto :goto_22

    :cond_36
    if-nez v12, :cond_26

    aget-object v10, p2, v13

    aget-object v12, p3, v13

    iget-boolean v14, v2, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_23
    iget v8, v10, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v6, v8, :cond_3e

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v15

    aget-object v16, v12, v6

    const/4 v8, 0x0

    :goto_24
    iget v9, v15, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v8, v9, :cond_3d

    aget v9, v16, v8

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v9

    if-eqz v9, :cond_38

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v17

    aget v18, v16, v8

    move-object/from16 v0, v17

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_39

    const/4 v9, 0x1

    :goto_25
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3b

    if-eqz v9, :cond_3a

    const/4 v9, 0x4

    :goto_26
    const/16 v17, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v17

    if-eqz v17, :cond_37

    add-int/lit16 v9, v9, 0x3e8

    :cond_37
    if-le v9, v3, :cond_38

    move v7, v6

    move v4, v8

    move v3, v9

    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_39
    const/4 v9, 0x0

    goto :goto_25

    :cond_3a
    const/4 v9, 0x3

    goto :goto_26

    :cond_3b
    if-eqz v9, :cond_3c

    const/4 v9, 0x2

    goto :goto_26

    :cond_3c
    const/4 v9, 0x1

    goto :goto_26

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_3e
    const/4 v3, -0x1

    if-ne v7, v3, :cond_3f

    const/4 v3, 0x0

    :goto_27
    aput-object v3, v19, v13

    aget-object v3, v19, v13

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    move v3, v11

    goto/16 :goto_1b

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/ads/WC;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v6

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    goto :goto_27

    :cond_40
    const/4 v4, 0x0

    move v3, v11

    goto/16 :goto_1b

    :cond_41
    return-object v19

    :cond_42
    move v5, v6

    goto/16 :goto_19

    :cond_43
    move-object v3, v6

    move v11, v9

    goto/16 :goto_3

    :cond_44
    move v3, v11

    goto/16 :goto_f
.end method
