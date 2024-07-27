.class public final Lcom/google/android/gms/internal/ads/Ny;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Lcom/google/android/gms/internal/ads/Ny;


# instance fields
.field public final DW:F

.field public final FH:F

.field private final Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/google/android/gms/internal/ads/Ny;

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/Ny;-><init>(FF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ny;->Hw:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/Ny;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    iget v2, p1, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    iget v2, p1, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6(J)J
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ny;->Hw:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method
