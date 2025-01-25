.class public final Lcom/google/android/gms/internal/ads/Fn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private EQ:Z

.field private final FH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Hw:Lcom/google/android/gms/internal/ads/A;

.field private J0:Z

.field private J8:Lcom/google/android/gms/internal/ads/zzbdi;

.field private QX:Z

.field private final VH:[J

.field private Ws:Z

.field private XL:J

.field private final Zo:Lcom/google/android/gms/internal/ads/tl;

.field private final gn:[Ljava/lang/String;

.field private final j6:Landroid/content/Context;

.field private tp:Z

.field private u7:Z

.field private final v5:Lcom/google/android/gms/internal/ads/D;

.field private we:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/wl;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/wl;-><init>()V

    const-string v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    const-string v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    const-string v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    const-wide/high16 v4, 0x4024000000000000L  # 10.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    const-string v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    const-wide/high16 v4, 0x4034000000000000L  # 20.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    const-string v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    const-wide/high16 v4, 0x403e000000000000L  # 30.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    const-string v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L  # 30.0

    const-wide v4, 0x7fefffffffffffffL  # Double.MAX_VALUE

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wl;->j6(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/wl;->j6()Lcom/google/android/gms/internal/ads/tl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->Zo:Lcom/google/android/gms/internal/ads/tl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->u7:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->tp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->EQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->we:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Fn;->XL:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fn;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fn;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fn;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Fn;->Hw:Lcom/google/android/gms/internal/ads/A;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->nw:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_76

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fn;->gn:[Ljava/lang/String;

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    return-void

    :cond_76
    const-string p2, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fn;->gn:[Ljava/lang/String;

    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    :goto_86
    array-length p2, p1

    if-ge v0, p2, :cond_a1

    :try_start_89
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    aput-wide p3, p2, v0
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_93} :catch_94

    goto :goto_9e

    :catch_94
    move-exception p2

    const-string p3, "Unable to parse frame hash target time number."

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    aput-wide v1, p2, v0

    :goto_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    :cond_a1
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->J0:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Fn;->tp:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Fn;->EQ:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fn;->Hw:Lcom/google/android/gms/internal/ads/A;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfp2"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->EQ:Z

    :cond_1b
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->EQ:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->we:Z

    if-nez v1, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ek;->j6()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->we:Z

    if-nez v1, :cond_1b

    const-string v1, "VideoMetricsMixin first frame"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_1b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fn;->Hw:Lcom/google/android/gms/internal/ads/A;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "vff2"

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/Fn;->we:Z

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->FH()J

    move-result-wide v4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->J0:Z

    const-wide/16 v6, 0x1

    if-eqz v1, :cond_62

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->QX:Z

    if-eqz v1, :cond_62

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Fn;->XL:J

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_62

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    long-to-double v8, v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Fn;->XL:J

    sub-long v10, v4, v10

    long-to-double v10, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fn;->Zo:Lcom/google/android/gms/internal/ads/tl;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/tl;->j6(D)V

    :cond_62
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->J0:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fn;->QX:Z

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/Fn;->XL:J

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->SI:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbdi;->getCurrentPosition()I

    move-result v1

    int-to-long v8, v1

    const/4 v1, 0x0

    :goto_7e
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Fn;->gn:[Ljava/lang/String;

    array-length v11, v10

    if-ge v1, v11, :cond_ec

    aget-object v10, v10, v1

    if-nez v10, :cond_e7

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    aget-wide v11, v10, v1

    sub-long v11, v8, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v4, v10

    if-lez v12, :cond_e7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fn;->gn:[Ljava/lang/String;

    const/16 v5, 0x8

    move-object/from16 v10, p1

    invoke-virtual {v10, v5, v5}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    const-wide/16 v11, 0x3f

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_a4
    if-ge v13, v5, :cond_d6

    const/4 v9, 0x0

    :goto_a7
    if-ge v9, v5, :cond_d1

    invoke-virtual {v8, v9, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int v10, v16, v10

    const/16 v5, 0x80

    if-le v10, v5, :cond_c4

    move-wide/from16 v17, v6

    goto :goto_c6

    :cond_c4
    const-wide/16 v17, 0x0

    :goto_c6
    long-to-int v5, v11

    shl-long v17, v17, v5

    or-long v14, v14, v17

    add-int/lit8 v9, v9, 0x1

    sub-long/2addr v11, v6

    const/16 v5, 0x8

    goto :goto_a7

    :cond_d1
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x8

    goto :goto_a4

    :cond_d6
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "%016X"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    return-void

    :cond_e7
    move-object/from16 v10, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_ec
    return-void
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->J0:Z

    return-void
.end method

.method public final Hw()V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->u7:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->tp:Z

    if-eqz v0, :cond_9

    goto :goto_1a

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fn;->Hw:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfr2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Fn;->tp:Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final j6()V
    .registers 8

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ei:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->Ws:Z

    if-nez v0, :cond_d7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fn;->DW:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->J8:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->v5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->Zo:Lcom/google/android/gms/internal/ads/tl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tl;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/vl;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "fps_c_"

    if-eqz v3, :cond_5d

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    :cond_5d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_62
    iget v3, v1, Lcom/google/android/gms/internal/ads/vl;->v5:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vl;->j6:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "fps_p_"

    if-eqz v3, :cond_7e

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_83

    :cond_7e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_83
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/vl;->Hw:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fn;->VH:[J

    array-length v2, v1

    if-ge v0, v2, :cond_c4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fn;->gn:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c1

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "fh_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_c4
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fn;->j6:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fn;->Ws:Z

    :cond_d7
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fn;->Hw:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vpc2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Fn;->u7:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fn;->v5:Lcom/google/android/gms/internal/ads/D;

    if-eqz v0, :cond_1e

    const-string v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdi;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fn;->J8:Lcom/google/android/gms/internal/ads/zzbdi;

    return-void
.end method
