.class public final Lcom/google/android/gms/internal/ads/pF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:F

.field private final FH:F

.field private final Hw:F

.field private final j6:F

.field private final v5:I


# direct methods
.method public constructor <init>(FFFFI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/pF;->j6:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/pF;->DW:F

    add-float v0, p1, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/pF;->FH:F

    add-float v0, p2, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/pF;->Hw:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/pF;->v5:I

    return-void
.end method


# virtual methods
.method final DW()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pF;->DW:F

    return v0
.end method

.method final FH()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pF;->FH:F

    return v0
.end method

.method final Hw()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pF;->Hw:F

    return v0
.end method

.method final j6()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pF;->j6:F

    return v0
.end method

.method final v5()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pF;->v5:I

    return v0
.end method
