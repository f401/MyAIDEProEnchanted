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
    .registers 7

    const/16 v2, 0xc

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/oA;->v5:Z

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/oA;->j6:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final j6()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oA;->j6:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oA;->v5:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oA;->Hw:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oA;->gn:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->FH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->u7:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->VH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/oA;->gn:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oA;->Zo:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method
