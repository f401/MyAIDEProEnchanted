.class final Lcom/google/android/gms/internal/ads/tA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qA;


# instance fields
.field private final DW:I

.field private final FH:I

.field private Hw:I

.field private final j6:Lcom/google/android/gms/internal/ads/LD;

.field private v5:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/ads/tA;->FH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/tA;->DW:I

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/tA;->DW:I

    return v0
.end method

.method public final j6()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/tA;->FH:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/tA;->Hw:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/tA;->Hw:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/tA;->v5:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/tA;->v5:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/tA;->v5:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method
