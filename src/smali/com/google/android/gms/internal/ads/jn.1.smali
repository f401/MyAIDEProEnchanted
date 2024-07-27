.class final Lcom/google/android/gms/internal/ads/jn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/internal/ads/cn;

.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cn;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jn;->FH:Lcom/google/android/gms/internal/ads/cn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/jn;->j6:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/jn;->DW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jn;->FH:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jn;->FH:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/jn;->j6:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/jn;->DW:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nn;->j6(II)V

    :cond_0
    return-void
.end method
