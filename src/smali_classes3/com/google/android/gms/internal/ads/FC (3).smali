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
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/LC;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/CC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;Lcom/google/android/gms/internal/ads/DC;)V

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/FC;->gn:Landroid/net/Uri;

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/LC;->v5:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_25

    move-object v2, v4

    goto :goto_35

    :cond_25
    new-instance v2, Lcom/google/android/gms/internal/ads/BC;

    const/4 v3, 0x0

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/LC;->Hw:J

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-wide/from16 p7, v5

    move-wide/from16 p9, v0

    invoke-direct/range {p5 .. p10}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    :goto_35
    iput-object v2, v9, Lcom/google/android/gms/internal/ads/FC;->EQ:Lcom/google/android/gms/internal/ads/BC;

    if-eqz v10, :cond_6a

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    move-object v0, v4

    :goto_6b
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/FC;->tp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, v9, Lcom/google/android/gms/internal/ads/FC;->u7:J

    if-eqz v2, :cond_74

    goto :goto_88

    :cond_74
    new-instance v4, Lcom/google/android/gms/internal/ads/MC;

    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v5, -0x1

    move-object p1, v0

    move-object p2, v1

    move-wide p3, v2

    move-wide/from16 p5, v5

    invoke-direct/range {p1 .. p6}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/MC;-><init>(Lcom/google/android/gms/internal/ads/BC;)V

    :goto_88
    iput-object v4, v9, Lcom/google/android/gms/internal/ads/FC;->we:Lcom/google/android/gms/internal/ads/MC;

    return-void
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
