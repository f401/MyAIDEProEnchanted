.class final Lcom/google/android/gms/internal/ads/mE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:F

.field private final j6:I

.field private final v5:Lcom/google/android/gms/internal/ads/gE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gE;IIIF)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mE;->v5:Lcom/google/android/gms/internal/ads/gE;

    iput p2, p0, Lcom/google/android/gms/internal/ads/mE;->j6:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/mE;->DW:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/mE;->FH:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/mE;->Hw:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mE;->v5:Lcom/google/android/gms/internal/ads/gE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/mE;->j6:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/mE;->DW:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/mE;->FH:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/mE;->Hw:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fE;->j6(IIIF)V

    return-void
.end method
