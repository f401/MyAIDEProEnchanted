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

    new-instance v0, Lcom/google/android/gms/internal/ads/Ny;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/Ny;-><init>(FF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    const/high16 p2, 0x447a0000  # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ny;->Hw:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_22

    const-class v1, Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_22

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/Ny;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    iget v2, p1, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_22

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_22

    return v0

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
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
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ny;->Hw:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
