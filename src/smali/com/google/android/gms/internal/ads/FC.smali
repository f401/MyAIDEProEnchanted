.class public final Lcom/google/android/gms/internal/ads/FC;
.super Lcom/google/android/gms/internal/ads/CC;


# instance fields
.field private final EQ:Lcom/google/android/gms/internal/ads/BC;

.field private final gn:Landroid/net/Uri;

.field private final tp:Ljava/lang/String;

.field private final u7:J

.field private final we:Lcom/google/android/gms/internal/ads/MC;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/LC;Ljava/util/List;Ljava/lang/String;J)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/LC;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
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

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->gn:Landroid/net/Uri;

    iget-wide v4, p6, Lcom/google/android/gms/internal/ads/LC;->v5:J

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->EQ:Lcom/google/android/gms/internal/ads/BC;

    if-eqz p1, :cond_1

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->tp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/FC;->u7:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->EQ:Lcom/google/android/gms/internal/ads/BC;

    if-eqz v0, :cond_2

    move-object v0, v6

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->we:Lcom/google/android/gms/internal/ads/MC;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    const/4 v1, 0x0

    iget-wide v2, p6, Lcom/google/android/gms/internal/ads/LC;->Hw:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/MC;

    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/MC;-><init>(Lcom/google/android/gms/internal/ads/BC;)V

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/internal/ads/qC;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->we:Lcom/google/android/gms/internal/ads/MC;

    return-object v0
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/BC;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/FC;->EQ:Lcom/google/android/gms/internal/ads/BC;

    return-object v0
.end method
