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

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/oB;->Hw(Lcom/google/android/gms/internal/ads/oB;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method
