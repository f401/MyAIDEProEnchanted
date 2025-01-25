.class public final Lcom/google/android/gms/internal/ads/vl;
.super Ljava/lang/Object;


# instance fields
.field private final DW:D

.field private final FH:D

.field public final Hw:D

.field public final j6:Ljava/lang/String;

.field public final v5:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/vl;->FH:D

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/vl;->DW:D

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    iput p8, p0, Lcom/google/android/gms/internal/ads/vl;->v5:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/vl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vl;->DW:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/vl;->DW:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vl;->FH:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/vl;->FH:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_34

    iget v0, p0, Lcom/google/android/gms/internal/ads/vl;->v5:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/vl;->v5:I

    if-ne v0, v2, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->DW:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->FH:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/vl;->v5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->FH:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "minBound"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->DW:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxBound"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/vl;->v5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
