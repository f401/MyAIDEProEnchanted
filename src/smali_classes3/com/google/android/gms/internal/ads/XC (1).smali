.class public abstract Lcom/google/android/gms/internal/ads/XC;
.super Lcom/google/android/gms/internal/ads/cD;


# instance fields
.field private final DW:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/NB;",
            "Lcom/google/android/gms/internal/ads/ZC;",
            ">;>;"
        }
    .end annotation
.end field

.field private final FH:Landroid/util/SparseBooleanArray;

.field private Hw:I

.field private v5:Lcom/google/android/gms/internal/ads/YC;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cD;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->DW:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/XC;->Hw:I

    return-void
.end method


# virtual methods
.method public final j6([Lcom/google/android/gms/internal/ads/Qy;Lcom/google/android/gms/internal/ads/NB;)Lcom/google/android/gms/internal/ads/eD;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [[Lcom/google/android/gms/internal/ads/LB;

    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v11, v6, [[[I

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v4, :cond_25

    iget v8, v2, Lcom/google/android/gms/internal/ads/NB;->DW:I

    new-array v9, v8, [Lcom/google/android/gms/internal/ads/LB;

    aput-object v9, v5, v7

    new-array v8, v8, [[I

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_25
    array-length v4, v1

    new-array v10, v4, [I

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v4, :cond_36

    aget-object v8, v1, v7

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Qy;->J8()I

    move-result v8

    aput v8, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_36
    const/4 v4, 0x0

    :goto_37
    iget v7, v2, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v4, v7, :cond_94

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v7

    array-length v8, v1

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_42
    array-length v13, v1

    if-ge v9, v13, :cond_62

    aget-object v13, v1, v9

    const/4 v14, 0x0

    :goto_48
    iget v15, v7, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v14, v15, :cond_5f

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/ads/Qy;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v15

    const/4 v6, 0x3

    and-int/2addr v15, v6

    if-le v15, v12, :cond_5c

    move v8, v9

    if-eq v15, v6, :cond_62

    move v12, v15

    :cond_5c
    add-int/lit8 v14, v14, 0x1

    goto :goto_48

    :cond_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    :cond_62
    array-length v6, v1

    if-ne v8, v6, :cond_6a

    iget v6, v7, Lcom/google/android/gms/internal/ads/LB;->j6:I

    new-array v6, v6, [I

    goto :goto_83

    :cond_6a
    aget-object v6, v1, v8

    iget v9, v7, Lcom/google/android/gms/internal/ads/LB;->j6:I

    new-array v9, v9, [I

    const/4 v12, 0x0

    :goto_71
    iget v13, v7, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v12, v13, :cond_82

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v13

    invoke-interface {v6, v13}, Lcom/google/android/gms/internal/ads/Qy;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_71

    :cond_82
    move-object v6, v9

    :goto_83
    aget v9, v3, v8

    aget-object v12, v5, v8

    aput-object v7, v12, v9

    aget-object v7, v11, v8

    aput-object v6, v7, v9

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_94
    array-length v4, v1

    new-array v9, v4, [Lcom/google/android/gms/internal/ads/NB;

    array-length v4, v1

    new-array v8, v4, [I

    const/4 v4, 0x0

    :goto_9b
    array-length v6, v1

    if-ge v4, v6, :cond_c4

    aget v6, v3, v4

    new-instance v7, Lcom/google/android/gms/internal/ads/NB;

    aget-object v12, v5, v4

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    aput-object v7, v9, v4

    aget-object v7, v11, v4

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v11, v4

    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v6

    aput v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    :cond_c4
    array-length v4, v1

    aget v3, v3, v4

    new-instance v12, Lcom/google/android/gms/internal/ads/NB;

    array-length v4, v1

    aget-object v4, v5, v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    invoke-virtual {v0, v1, v9, v11}, Lcom/google/android/gms/internal/ads/XC;->j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;

    move-result-object v3

    const/4 v4, 0x0

    :goto_da
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_108

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_e9

    aput-object v6, v3, v4

    goto :goto_ff

    :cond_e9
    aget-object v5, v9, v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/XC;->DW:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_f6

    goto :goto_fd

    :cond_f6
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/ZC;

    :goto_fd
    if-nez v6, :cond_102

    :goto_ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    :cond_102
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    :cond_108
    new-instance v4, Lcom/google/android/gms/internal/ads/YC;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/YC;-><init>([I[Lcom/google/android/gms/internal/ads/NB;[I[[[ILcom/google/android/gms/internal/ads/NB;)V

    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/Ry;

    const/4 v7, 0x0

    :goto_112
    array-length v8, v1

    if-ge v7, v8, :cond_122

    aget-object v8, v3, v7

    if-eqz v8, :cond_11c

    sget-object v8, Lcom/google/android/gms/internal/ads/Ry;->j6:Lcom/google/android/gms/internal/ads/Ry;

    goto :goto_11d

    :cond_11c
    move-object v8, v6

    :goto_11d
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_112

    :cond_122
    new-instance v1, Lcom/google/android/gms/internal/ads/eD;

    new-instance v6, Lcom/google/android/gms/internal/ads/bD;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/bD;-><init>([Lcom/google/android/gms/internal/ads/_C;)V

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/eD;-><init>(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/Ry;)V

    return-object v1
.end method

.method public final j6(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cD;->j6()V

    return-void
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/YC;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/XC;->v5:Lcom/google/android/gms/internal/ads/YC;

    return-void
.end method

.method protected abstract j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;
.end method
