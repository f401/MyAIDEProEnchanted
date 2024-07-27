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

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/pz;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/pz;->FH:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/pz;->Hw:F

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
    .registers 6

    iget v1, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/pz;->Hw:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/pz;->j6:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/pz;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/pz;->FH:I

    if-gt v1, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    throw p1
.end method
