.class final Lcom/google/android/gms/internal/ads/sA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qA;


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/internal/ads/LD;

.field private final j6:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/sA;->j6:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/sA;->DW:I

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/sA;->j6:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/sA;->DW:I

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/sA;->j6:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    :cond_0
    return v0
.end method
