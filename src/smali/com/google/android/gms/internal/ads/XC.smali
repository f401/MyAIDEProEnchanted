.class public abstract Lcom/google/android/gms/internal/ads/XC;
.super Lcom/google/android/gms/internal/ads/cD;


# instance fields
.field private final DW:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
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
    .registers 15

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [[Lcom/google/android/gms/internal/ads/LB;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [[[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    iget v1, p2, Lcom/google/android/gms/internal/ads/NB;->DW:I

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/LB;

    aput-object v2, v9, v0

    new-array v1, v1, [[I

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Qy;->J8()I

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v1, p2, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v0, v1, :cond_7

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/NB;->j6(I)Lcom/google/android/gms/internal/ads/LB;

    move-result-object v10

    array-length v2, p1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_3
    array-length v6, p1

    if-ge v5, v6, :cond_4

    aget-object v11, p1, v5

    const/4 v6, 0x0

    :goto_4
    iget v7, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v6, v7, :cond_3

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v7

    invoke-interface {v11, v7}, Lcom/google/android/gms/internal/ads/Qy;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    if-le v7, v1, :cond_2

    const/4 v1, 0x3

    if-eq v7, v1, :cond_5

    move v1, v7

    move v2, v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v2

    :cond_5
    array-length v1, p1

    if-ne v5, v1, :cond_6

    iget v1, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    new-array v1, v1, [I

    :goto_5
    aget v2, v8, v5

    aget-object v6, v9, v5

    aput-object v10, v6, v2

    aget-object v6, v4, v5

    aput-object v1, v6, v2

    aget v1, v8, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v8, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    aget-object v6, p1, v5

    iget v1, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    new-array v2, v1, [I

    const/4 v1, 0x0

    :goto_6
    iget v7, v10, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ge v1, v7, :cond_f

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/Qy;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v7

    aput v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/gms/internal/ads/NB;

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    move v5, v0

    :goto_7
    array-length v0, p1

    if-ge v5, v0, :cond_8

    aget v6, v8, v5

    new-instance v7, Lcom/google/android/gms/internal/ads/NB;

    aget-object v0, v9, v5

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    aput-object v7, v2, v5

    aget-object v0, v4, v5

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v4, v5

    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qy;->v5()I

    move-result v0

    aput v0, v1, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_8
    array-length v0, p1

    aget v0, v8, v0

    new-instance v5, Lcom/google/android/gms/internal/ads/NB;

    array-length v6, p1

    aget-object v6, v9, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/gms/internal/ads/XC;->j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;

    move-result-object v8

    const/4 v0, 0x0

    move v6, v0

    :goto_8
    array-length v0, p1

    const/4 v7, 0x0

    if-ge v6, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    aput-object v0, v8, v6

    :cond_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    :cond_a
    aget-object v9, v2, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->DW:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_b

    move-object v0, v7

    :goto_9
    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_b
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ZC;

    goto :goto_9

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/YC;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/YC;-><init>([I[Lcom/google/android/gms/internal/ads/NB;[I[[[ILcom/google/android/gms/internal/ads/NB;)V

    array-length v1, p1

    new-array v3, v1, [Lcom/google/android/gms/internal/ads/Ry;

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    array-length v1, p1

    if-ge v2, v1, :cond_e

    aget-object v1, v8, v2

    if-eqz v1, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/ads/Ry;->j6:Lcom/google/android/gms/internal/ads/Ry;

    :goto_b
    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/ads/eD;

    new-instance v2, Lcom/google/android/gms/internal/ads/bD;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/bD;-><init>([Lcom/google/android/gms/internal/ads/_C;)V

    invoke-direct {v1, p2, v2, v0, v3}, Lcom/google/android/gms/internal/ads/eD;-><init>(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/Ry;)V

    return-object v1

    :cond_f
    move-object v1, v2

    goto/16 :goto_5
.end method

.method public final j6(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XC;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cD;->j6()V

    goto :goto_0
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/YC;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/XC;->v5:Lcom/google/android/gms/internal/ads/YC;

    return-void
.end method

.method protected abstract j6([Lcom/google/android/gms/internal/ads/Qy;[Lcom/google/android/gms/internal/ads/NB;[[[I)[Lcom/google/android/gms/internal/ads/_C;
.end method
