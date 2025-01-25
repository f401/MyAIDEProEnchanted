.class final Lcom/google/android/gms/internal/ads/oA;
.super Ljava/lang/Object;


# instance fields
.field public DW:I

.field public FH:I

.field public Hw:J

.field private final VH:Lcom/google/android/gms/internal/ads/LD;

.field private final Zo:Lcom/google/android/gms/internal/ads/LD;

.field private gn:I

.field public final j6:I

.field private u7:I

.field private final v5:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/LD;Lcom/google/android/gms/internal/ads/LD;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/oA;->v5:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/oA;->j6:I

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    return-void
.end method


# virtual methods
.method public final j6()Z
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/oA;->j6:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oA;->v5:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v2

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/oA;->gn:I

    if-ne v0, v2, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->FH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->gn:I

    :cond_45
    return v1
.end method
