.class final Lcom/google/android/gms/internal/ads/rB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oB;

.field private final j6:Lcom/google/android/gms/internal/ads/uB;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oB;Lcom/google/android/gms/internal/ads/uB;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rB;->DW:Lcom/google/android/gms/internal/ads/oB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rB;->j6:Lcom/google/android/gms/internal/ads/uB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rB;->j6:Lcom/google/android/gms/internal/ads/uB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uB;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->Hw(Lcom/google/android/gms/internal/ads/oB;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->Hw(Lcom/google/android/gms/internal/ads/oB;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
