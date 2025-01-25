.class public final Lcom/google/android/gms/internal/ads/vj;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:I

.field private Hw:J

.field private j6:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/vj;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj;->DW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/vj;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/vj;->FH:I

    return p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/vj;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vj;->Hw:J

    return-wide v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/vj;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj;->j6:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj;->DW:Ljava/lang/String;

    return-object p0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/tj;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/tj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/tj;-><init>(Lcom/google/android/gms/internal/ads/vj;Lcom/google/android/gms/internal/ads/uj;)V

    return-object v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/vj;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/vj;->FH:I

    return-object p0
.end method

.method public final j6(J)Lcom/google/android/gms/internal/ads/vj;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/vj;->Hw:J

    return-object p0
.end method

.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj;->j6:Ljava/lang/String;

    return-object p0
.end method
