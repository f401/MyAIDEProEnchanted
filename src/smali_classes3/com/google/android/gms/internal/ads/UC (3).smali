.class public final Lcom/google/android/gms/internal/ads/UC;
.super Lcom/google/android/gms/internal/ads/XC;


# static fields
.field private static final Zo:[I


# instance fields
.field private final VH:Lcom/google/android/gms/internal/ads/aD;

.field private final gn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
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
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/XC;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/UC;->VH:Lcom/google/android/gms/internal/ads/aD;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/VC;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/VC;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/UC;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static DW(IZ)Z
    .registers 3

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_c

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method private static j6(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0

    :cond_8
    if-ne p1, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    sub-int/2addr p0, p1

    return p0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/TD;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;
    .registers 38

    move-object/from16 v0, p1

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/_C;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/UC;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/VC;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_11
    const/4 v8, 0x2

    if-ge v6, v1, :cond_24e

    aget-object v12, v0, v6

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v12

    if-ne v8, v12, :cond_238

    if-nez v7, :cond_22b

    aget-object v7, p2, v6

    aget-object v12, p3, v6

    iget v13, v4, Lcom/google/android/gms/internal/ads/VC;->v5:I

    iget v14, v4, Lcom/google/android/gms/internal/ads/VC;->Zo:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/VC;->VH:I

    iget v10, v4, Lcom/google/android/gms/internal/ads/VC;->tp:I

    iget v8, v4, Lcom/google/android/gms/internal/ads/VC;->EQ:I

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/VC;->we:Z

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/VC;->gn:Z

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    move/from16 v23, v1

    move-object/from16 v19, v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    :goto_3f
    iget v1, v7, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v4, v1, :cond_20c

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v1

    move-object/from16 v24, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v25, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/LB;->j6:I

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v26, v6

    const/4 v2, 0x0

    :goto_55
    iget v6, v1, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v2, v6, :cond_63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_63
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_130

    if-ne v8, v2, :cond_6c

    goto/16 :goto_130

    :cond_6c
    move/from16 v27, v0

    const/4 v6, 0x0

    :goto_6f
    iget v0, v1, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v6, v0, :cond_fa

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    move-object/from16 v28, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-lez v3, :cond_e0

    move/from16 v29, v9

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-lez v9, :cond_db

    move/from16 v30, v5

    if-eqz v5, :cond_9b

    if-le v3, v9, :cond_8b

    const/4 v5, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v5, 0x0

    :goto_8c
    move/from16 v31, v8

    if-le v10, v8, :cond_92

    const/4 v8, 0x1

    goto :goto_93

    :cond_92
    const/4 v8, 0x0

    :goto_93
    if-eq v5, v8, :cond_9d

    move v5, v10

    move/from16 v32, v5

    move/from16 v8, v31

    goto :goto_a2

    :cond_9b
    move/from16 v31, v8

    :cond_9d
    move v8, v10

    move/from16 v32, v8

    move/from16 v5, v31

    :goto_a2
    mul-int v10, v3, v5

    move/from16 v33, v15

    mul-int v15, v9, v8

    if-lt v10, v15, :cond_b4

    new-instance v5, Landroid/graphics/Point;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v3

    invoke-direct {v5, v8, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_be

    :cond_b4
    new-instance v3, Landroid/graphics/Point;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v5, v3

    :goto_be
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    mul-int v8, v3, v0

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v10, 0x3f7ae148  # 0.98f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-lt v3, v9, :cond_ea

    iget v3, v5, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    if-lt v0, v3, :cond_ea

    if-ge v8, v2, :cond_ea

    move v2, v8

    goto :goto_ea

    :cond_db
    move/from16 v30, v5

    move/from16 v31, v8

    goto :goto_e6

    :cond_e0
    move/from16 v30, v5

    move/from16 v31, v8

    move/from16 v29, v9

    :goto_e6
    move/from16 v32, v10

    move/from16 v33, v15

    :cond_ea
    :goto_ea
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v28

    move/from16 v9, v29

    move/from16 v5, v30

    move/from16 v8, v31

    move/from16 v10, v32

    move/from16 v15, v33

    goto/16 :goto_6f

    :cond_fa
    move-object/from16 v28, v3

    move/from16 v30, v5

    move/from16 v31, v8

    move/from16 v29, v9

    move/from16 v32, v10

    move/from16 v33, v15

    const v0, 0x7fffffff

    if-eq v2, v0, :cond_13e

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_111
    if-ltz v0, :cond_13e

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_12a

    if-le v3, v2, :cond_12d

    :cond_12a
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_12d
    add-int/lit8 v0, v0, -0x1

    goto :goto_111

    :cond_130
    :goto_130
    move/from16 v27, v0

    move-object/from16 v28, v3

    move/from16 v30, v5

    move/from16 v31, v8

    move/from16 v29, v9

    move/from16 v32, v10

    move/from16 v33, v15

    :cond_13e
    aget-object v0, v12, v4

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v8, v22

    move-object/from16 v3, v28

    const/4 v2, 0x0

    :goto_149
    iget v9, v1, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v2, v9, :cond_1ee

    aget v9, v0, v2

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v9

    if-eqz v9, :cond_1da

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17d

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    const/4 v15, -0x1

    if-eq v10, v15, :cond_16a

    if-gt v10, v13, :cond_17d

    :cond_16a
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-eq v10, v15, :cond_170

    if-gt v10, v14, :cond_17d

    :cond_170
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    if-eq v10, v15, :cond_179

    move/from16 v15, v33

    if-gt v10, v15, :cond_17f

    goto :goto_17b

    :cond_179
    move/from16 v15, v33

    :goto_17b
    const/4 v10, 0x1

    goto :goto_180

    :cond_17d
    move/from16 v15, v33

    :cond_17f
    const/4 v10, 0x0

    :goto_180
    if-nez v10, :cond_18c

    if-eqz v29, :cond_185

    goto :goto_18c

    :cond_185
    move-object/from16 v22, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    goto :goto_1e2

    :cond_18c
    :goto_18c
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    if-eqz v10, :cond_194

    const/4 v1, 0x2

    goto :goto_195

    :cond_194
    const/4 v1, 0x1

    :goto_195
    aget v3, v0, v2

    move-object/from16 v22, v0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a2

    add-int/lit16 v1, v1, 0x3e8

    :cond_1a2
    if-le v1, v5, :cond_1a6

    const/4 v0, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v0, 0x0

    :goto_1a7
    if-ne v1, v5, :cond_1ca

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v0

    if-eq v0, v8, :cond_1b8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v0

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/UC;->j6(II)I

    move-result v0

    goto :goto_1be

    :cond_1b8
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/UC;->j6(II)I

    move-result v0

    :goto_1be
    if-eqz v3, :cond_1c5

    if-eqz v10, :cond_1c5

    if-lez v0, :cond_1c9

    goto :goto_1c7

    :cond_1c5
    if-gez v0, :cond_1c9

    :goto_1c7
    const/4 v0, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v0, 0x0

    :cond_1ca
    :goto_1ca
    if-eqz v0, :cond_1e2

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfs;->j6()I

    move-result v3

    move v6, v0

    move v5, v1

    move/from16 v27, v2

    move v8, v3

    move-object/from16 v3, v20

    goto :goto_1e4

    :cond_1da
    move-object/from16 v22, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v15, v33

    :cond_1e2
    :goto_1e2
    move-object/from16 v3, v21

    :goto_1e4
    add-int/lit8 v2, v2, 0x1

    move/from16 v33, v15

    move-object/from16 v1, v20

    move-object/from16 v0, v22

    goto/16 :goto_149

    :cond_1ee
    move-object/from16 v21, v3

    move/from16 v15, v33

    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v5

    move/from16 v22, v8

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    move/from16 v0, v27

    move/from16 v9, v29

    move/from16 v5, v30

    move/from16 v8, v31

    move/from16 v10, v32

    move/from16 v21, v6

    move/from16 v6, v26

    goto/16 :goto_3f

    :cond_20c
    move/from16 v27, v0

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    move/from16 v26, v6

    if-nez v28, :cond_218

    const/4 v10, 0x0

    goto :goto_221

    :cond_218
    new-instance v10, Lcom/google/android/gms/internal/ads/WC;

    move/from16 v1, v27

    move-object/from16 v0, v28

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    :goto_221
    aput-object v10, v25, v26

    aget-object v0, v25, v26

    if-eqz v0, :cond_229

    const/4 v7, 0x1

    goto :goto_233

    :cond_229
    const/4 v7, 0x0

    goto :goto_233

    :cond_22b
    move/from16 v23, v1

    move-object/from16 v25, v2

    move-object/from16 v19, v4

    move/from16 v26, v6

    :goto_233
    aget-object v0, p2, v26

    iget v0, v0, Lcom/google/android/gms/internal/ads/NB;->DW:I

    goto :goto_240

    :cond_238
    move/from16 v23, v1

    move-object/from16 v25, v2

    move-object/from16 v19, v4

    move/from16 v26, v6

    :goto_240
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v4, v19

    move/from16 v1, v23

    move-object/from16 v2, v25

    goto/16 :goto_11

    :cond_24e
    move-object/from16 v25, v2

    move-object/from16 v19, v4

    move v2, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_256
    if-ge v0, v2, :cond_41d

    aget-object v4, p1, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v4, v7, :cond_38b

    const/4 v7, 0x2

    if-eq v4, v7, :cond_384

    if-eq v4, v6, :cond_2dd

    aget-object v4, p1, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    aget-object v4, p2, v0

    aget-object v5, p3, v0

    move-object/from16 v7, v19

    iget-boolean v6, v7, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_278
    iget v12, v4, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v9, v12, :cond_2ca

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v12

    aget-object v13, v5, v9

    const/4 v14, 0x0

    :goto_283
    iget v15, v12, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v14, v15, :cond_2c3

    aget v15, v13, v14

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v15

    if-eqz v15, :cond_2b8

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v15

    iget v15, v15, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    const/16 v18, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_29d

    const/4 v15, 0x1

    goto :goto_29e

    :cond_29d
    const/4 v15, 0x0

    :goto_29e
    move/from16 v23, v2

    if-eqz v15, :cond_2a4

    const/4 v15, 0x2

    goto :goto_2a5

    :cond_2a4
    const/4 v15, 0x1

    :goto_2a5
    aget v2, v13, v14

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v2

    if-eqz v2, :cond_2b2

    add-int/lit16 v15, v15, 0x3e8

    :cond_2b2
    if-le v15, v10, :cond_2bc

    move-object v8, v12

    move v11, v14

    move v10, v15

    goto :goto_2bc

    :cond_2b8
    move/from16 v23, v2

    move-object/from16 v19, v4

    :cond_2bc
    :goto_2bc
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v19

    move/from16 v2, v23

    goto :goto_283

    :cond_2c3
    move/from16 v23, v2

    move-object/from16 v19, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_278

    :cond_2ca
    move/from16 v23, v2

    if-nez v8, :cond_2d0

    const/4 v2, 0x0

    goto :goto_2d5

    :cond_2d0
    new-instance v2, Lcom/google/android/gms/internal/ads/WC;

    invoke-direct {v2, v8, v11}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    :goto_2d5
    aput-object v2, v25, v0

    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x2

    goto/16 :goto_380

    :cond_2dd
    move/from16 v23, v2

    move-object/from16 v7, v19

    if-nez v1, :cond_388

    aget-object v1, p2, v0

    aget-object v2, p3, v0

    iget-boolean v4, v7, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2ed
    iget v12, v1, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v8, v12, :cond_36a

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v12

    aget-object v13, v2, v8

    move-object v14, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    :goto_2fb
    iget v15, v12, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v9, v15, :cond_35f

    aget v15, v13, v9

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v15

    if-eqz v15, :cond_355

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v15

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    const/16 v18, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_315

    const/4 v5, 0x1

    goto :goto_316

    :cond_315
    const/4 v5, 0x0

    :goto_316
    iget v6, v15, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    const/16 v17, 0x2

    and-int/lit8 v6, v6, 0x2

    move-object/from16 v21, v1

    const/4 v1, 0x0

    if-eqz v6, :cond_323

    const/4 v6, 0x1

    goto :goto_324

    :cond_323
    const/4 v6, 0x0

    :goto_324
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_334

    if-eqz v5, :cond_32e

    const/4 v1, 0x6

    goto :goto_344

    :cond_32e
    if-nez v6, :cond_332

    const/4 v1, 0x5

    goto :goto_344

    :cond_332
    const/4 v1, 0x4

    goto :goto_344

    :cond_334
    if-eqz v5, :cond_338

    const/4 v1, 0x3

    goto :goto_344

    :cond_338
    if-eqz v6, :cond_359

    const/4 v1, 0x0

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_343

    const/4 v1, 0x2

    goto :goto_344

    :cond_343
    const/4 v1, 0x1

    :goto_344
    aget v5, v13, v9

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v5

    if-eqz v5, :cond_34f

    add-int/lit16 v1, v1, 0x3e8

    :cond_34f
    if-le v1, v11, :cond_359

    move v11, v1

    move v10, v9

    move-object v14, v12

    goto :goto_359

    :cond_355
    move-object/from16 v21, v1

    const/16 v17, 0x2

    :cond_359
    :goto_359
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v21

    const/4 v6, 0x3

    goto :goto_2fb

    :cond_35f
    move-object/from16 v21, v1

    const/16 v17, 0x2

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v11

    move-object v11, v14

    const/4 v6, 0x3

    goto :goto_2ed

    :cond_36a
    const/16 v17, 0x2

    if-nez v11, :cond_370

    const/4 v1, 0x0

    goto :goto_375

    :cond_370
    new-instance v1, Lcom/google/android/gms/internal/ads/WC;

    invoke-direct {v1, v11, v9}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    :goto_375
    aput-object v1, v25, v0

    aget-object v1, v25, v0

    if-eqz v1, :cond_37d

    const/4 v1, 0x1

    goto :goto_37e

    :cond_37d
    const/4 v1, 0x0

    :cond_37e
    :goto_37e
    const/4 v5, -0x1

    const/4 v15, 0x0

    :goto_380
    const/16 v18, 0x1

    goto/16 :goto_415

    :cond_384
    move/from16 v23, v2

    move-object/from16 v7, v19

    :cond_388
    const/16 v17, 0x2

    goto :goto_37e

    :cond_38b
    move/from16 v23, v2

    move-object/from16 v7, v19

    const/16 v17, 0x2

    if-nez v3, :cond_37e

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    iget-boolean v4, v7, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_39d
    iget v10, v2, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v5, v10, :cond_3fb

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v10

    aget-object v11, v3, v5

    move v12, v9

    move v9, v8

    move v8, v6

    const/4 v6, 0x0

    :goto_3ab
    iget v13, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v6, v13, :cond_3f2

    aget v13, v11, v6

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v13

    if-eqz v13, :cond_3ec

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v13

    aget v14, v11, v6

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    const/16 v18, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_3c9

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto :goto_3cc

    :cond_3c9
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3cc
    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/UC;->j6(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3d8

    if-eqz v16, :cond_3d6

    const/4 v13, 0x4

    goto :goto_3dd

    :cond_3d6
    const/4 v13, 0x3

    goto :goto_3dd

    :cond_3d8
    if-eqz v16, :cond_3dc

    const/4 v13, 0x2

    goto :goto_3dd

    :cond_3dc
    const/4 v13, 0x1

    :goto_3dd
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/UC;->DW(IZ)Z

    move-result v14

    if-eqz v14, :cond_3e6

    add-int/lit16 v13, v13, 0x3e8

    :cond_3e6
    if-le v13, v8, :cond_3ef

    move v9, v5

    move v12, v6

    move v8, v13

    goto :goto_3ef

    :cond_3ec
    const/4 v15, 0x0

    const/16 v18, 0x1

    :cond_3ef
    :goto_3ef
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ab

    :cond_3f2
    const/4 v15, 0x0

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    move v8, v9

    move v9, v12

    goto :goto_39d

    :cond_3fb
    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v18, 0x1

    if-ne v8, v5, :cond_403

    const/4 v3, 0x0

    goto :goto_40c

    :cond_403
    new-instance v3, Lcom/google/android/gms/internal/ads/WC;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v2

    invoke-direct {v3, v2, v9}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;I)V

    :goto_40c
    aput-object v3, v25, v0

    aget-object v2, v25, v0

    if-eqz v2, :cond_414

    const/4 v3, 0x1

    goto :goto_415

    :cond_414
    const/4 v3, 0x0

    :goto_415
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v7

    move/from16 v2, v23

    goto/16 :goto_256

    :cond_41d
    return-object v25
.end method
