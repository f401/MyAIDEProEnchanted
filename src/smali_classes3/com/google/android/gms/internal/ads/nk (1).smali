.class final Lcom/google/android/gms/internal/ads/nk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:J

.field private final FH:Lcom/google/android/gms/internal/ads/mk;

.field private j6:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nk;->FH:Lcom/google/android/gms/internal/ads/mk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nk;->j6:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nk;->DW:J

    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nk;->DW:J

    return-wide v0
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk;->FH:Lcom/google/android/gms/internal/ads/mk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mk;->j6(Lcom/google/android/gms/internal/ads/mk;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nk;->DW:J

    return-void
.end method

.method public final Hw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk;->FH:Lcom/google/android/gms/internal/ads/mk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mk;->j6(Lcom/google/android/gms/internal/ads/mk;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nk;->j6:J

    return-void
.end method

.method public final j6()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "topen"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nk;->j6:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "tclose"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nk;->DW:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
