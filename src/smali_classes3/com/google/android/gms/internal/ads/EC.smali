.class public final Lcom/google/android/gms/internal/ads/EC;
.super Lcom/google/android/gms/internal/ads/CC;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qC;


# instance fields
.field private final gn:Lcom/google/android/gms/internal/ads/HC;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/HC;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/HC;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/CC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;Lcom/google/android/gms/internal/ads/DC;)V

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget v0, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    return v0
.end method

.method public final DW(I)Lcom/google/android/gms/internal/ads/BC;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object p1

    return-object p1
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/internal/ads/qC;
    .registers 1

    return-object p0
.end method

.method public final j6(J)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result p1

    return p1
.end method

.method public final j6(JJ)I
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget v1, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result p3

    if-nez p3, :cond_b

    return v1

    :cond_b
    iget-object p4, v0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-nez p4, :cond_2d

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long/2addr v2, v4

    iget p4, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    div-long/2addr p1, v2

    long-to-int p2, p1

    add-int/2addr p4, p2

    if-ge p4, v1, :cond_21

    return v1

    :cond_21
    const/4 p1, -0x1

    if-ne p3, p1, :cond_25

    return p4

    :cond_25
    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2d
    add-int/2addr p3, v1

    add-int/lit8 p3, p3, -0x1

    move p4, v1

    :goto_31
    if-gt p4, p3, :cond_4b

    sub-int v2, p3, p4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_43

    add-int/lit8 p4, v2, 0x1

    goto :goto_31

    :cond_43
    cmp-long p3, v3, p1

    if-lez p3, :cond_4a

    add-int/lit8 p3, v2, -0x1

    goto :goto_31

    :cond_4a
    return v2

    :cond_4b
    if-ne p4, v1, :cond_4e

    return p4

    :cond_4e
    return p3
.end method

.method public final j6(I)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(IJ)J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    const-wide/32 v2, 0xf4240

    if-eqz v1, :cond_1a

    iget p2, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int/2addr p1, p2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/KC;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/KC;->DW:J

    :goto_14
    mul-long p1, p1, v2

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long/2addr p1, v0

    return-wide p1

    :cond_1a
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2e

    iget v4, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2e

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v0

    sub-long/2addr p2, v0

    return-wide p2

    :cond_2e
    iget-wide p1, v0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    goto :goto_14
.end method

.method public final j6()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HC;->j6()Z

    move-result v0

    return v0
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/BC;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
