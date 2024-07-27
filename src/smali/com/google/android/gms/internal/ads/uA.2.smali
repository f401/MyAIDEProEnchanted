.class final Lcom/google/android/gms/internal/ads/uA;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field private final FH:I

.field private final j6:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/uA;->j6:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/uA;->DW:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/uA;->FH:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/uA;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/uA;->j6:I

    return v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/uA;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/uA;->FH:I

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/uA;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/uA;->DW:J

    return-wide v0
.end method
