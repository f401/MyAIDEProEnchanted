.class final Lcom/google/android/gms/internal/ads/FB;
.super Ljava/lang/Object;


# instance fields
.field public final DW:J

.field public FH:Z

.field public Hw:Lcom/google/android/gms/internal/ads/fD;

.field public final j6:J

.field public v5:Lcom/google/android/gms/internal/ads/FB;


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/FB;->j6:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/FB;->DW:J

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/FB;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    return-object v0
.end method
