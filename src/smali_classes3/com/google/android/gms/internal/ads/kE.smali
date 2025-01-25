.class final Lcom/google/android/gms/internal/ads/kE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:J

.field private final FH:Lcom/google/android/gms/internal/ads/gE;

.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gE;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kE;->FH:Lcom/google/android/gms/internal/ads/gE;

    iput p2, p0, Lcom/google/android/gms/internal/ads/kE;->j6:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/kE;->DW:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kE;->FH:Lcom/google/android/gms/internal/ads/gE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/kE;->j6:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/kE;->DW:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fE;->j6(IJ)V

    return-void
.end method
