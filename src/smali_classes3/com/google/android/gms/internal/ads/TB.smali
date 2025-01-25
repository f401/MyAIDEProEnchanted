.class final Lcom/google/android/gms/internal/ads/TB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yz;


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/internal/ads/zzfs;

.field public Hw:Lcom/google/android/gms/internal/ads/zzfs;

.field private final j6:I

.field private v5:Lcom/google/android/gms/internal/ads/Yz;


# direct methods
.method public constructor <init>(IILcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/TB;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/TB;->DW:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/TB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result p1

    return p1
.end method

.method public final j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/LD;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/UB;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Lcom/google/android/gms/internal/ads/Nz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Nz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    return-void

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/TB;->j6:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/TB;->DW:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/UB;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_1b
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TB;->v5:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void
.end method
