.class public final Lcom/google/android/gms/internal/ads/pz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/C;


# instance fields
.field private DW:I

.field private final FH:I

.field private final Hw:F

.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    const/16 v2, 0x9c4

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/pz;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    iput p1, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/pz;->FH:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/pz;->Hw:F

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/db;)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    int-to-float v3, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/pz;->Hw:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/pz;->FH:I

    if-gt v0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    throw p1
.end method
