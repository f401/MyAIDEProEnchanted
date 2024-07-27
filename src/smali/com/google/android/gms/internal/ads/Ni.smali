.class final Lcom/google/android/gms/internal/ads/Ni;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/Ji;

.field public final j6:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Li;Lcom/google/android/gms/internal/ads/Ji;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ni;->j6:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ni;->DW:Lcom/google/android/gms/internal/ads/Ji;

    return-void
.end method
