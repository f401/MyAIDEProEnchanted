.class public final Lcom/google/android/gms/internal/ads/SB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Rz;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzfs;

.field private final FH:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/TB;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Z

.field private VH:[Lcom/google/android/gms/internal/ads/zzfs;

.field private Zo:Lcom/google/android/gms/internal/ads/Wz;

.field public final j6:Lcom/google/android/gms/internal/ads/Oz;

.field private v5:Lcom/google/android/gms/internal/ads/UB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/SB;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Wz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->Zo:Lcom/google/android/gms/internal/ads/Wz;

    return-object v0
.end method

.method public final FH()[Lcom/google/android/gms/internal/ads/zzfs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->VH:[Lcom/google/android/gms/internal/ads/zzfs;

    return-object v0
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/Yz;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/TB;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->VH:[Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/TB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SB;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/TB;-><init>(IILcom/google/android/gms/internal/ads/zzfs;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/SB;->v5:Lcom/google/android/gms/internal/ads/UB;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/TB;->j6(Lcom/google/android/gms/internal/ads/UB;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_25
    return-object v0
.end method

.method public final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/TB;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/TB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->VH:[Lcom/google/android/gms/internal/ads/zzfs;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/UB;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SB;->v5:Lcom/google/android/gms/internal/ads/UB;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/SB;->Hw:Z

    if-nez v0, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Rz;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/SB;->Hw:Z

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SB;->j6:Lcom/google/android/gms/internal/ads/Oz;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/Oz;->j6(JJ)V

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SB;->FH:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/TB;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/TB;->j6(Lcom/google/android/gms/internal/ads/UB;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Wz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SB;->Zo:Lcom/google/android/gms/internal/ads/Wz;

    return-void
.end method
