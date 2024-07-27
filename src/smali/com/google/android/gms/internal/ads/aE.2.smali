.class public final Lcom/google/android/gms/internal/ads/aE;
.super Lcom/google/android/gms/internal/ads/OA;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final x9:[I


# instance fields
.field private AL:I

.field private CU:J

.field private Eq:I

.field private Ev:F

.field private FN:F

.field private final OW:I

.field private final Qq:Landroid/content/Context;

.field private WB:I

.field private XG:Landroid/view/Surface;

.field private final XX:[J

.field private Xa:J

.field private final aj:Lcom/google/android/gms/internal/ads/gE;

.field private aq:I

.field private final br:Z

.field private et:Z

.field private fY:Z

.field private hz:I

.field private jJ:Landroid/view/Surface;

.field private jO:I

.field private jw:F

.field k2:Lcom/google/android/gms/internal/ads/dE;

.field private kQ:[Lcom/google/android/gms/internal/ads/zzfs;

.field private ko:I

.field private final lp:J

.field private mb:I

.field private oY:I

.field private qp:I

.field private final sy:Lcom/google/android/gms/internal/ads/zzqs;

.field private wc:I

.field private yO:Lcom/google/android/gms/internal/ads/cE;

.field private ye:I

.field private zh:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/aE;->x9:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/RA;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;I)V
    .registers 19

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/aE;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/RA;JLcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/RA;JLcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/RA;",
            "J",
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/fE;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/OA;-><init>(ILcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->OW:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    new-instance v1, Lcom/google/android/gms/internal/ads/gE;

    invoke-direct {v1, p7, p8}, Lcom/google/android/gms/internal/ads/gE;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    const-string v1, "foster"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NVIDIA"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->br:Z

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    return-void
.end method

.method private final BT()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/dE;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/dE;-><init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/bE;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    :cond_0
    return-void
.end method

.method private final DW(Landroid/media/MediaCodec;IJ)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->P8()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    return-void
.end method

.method private final DW(Z)Z
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static FH(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aE;->j6(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method private static FH(J)Z
    .registers 4

    const-wide/16 v0, -0x7530

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Hw(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private final P8()V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->mb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->jw:F

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/gE;->j6(IIIF)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->mb:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jw:F

    :cond_1
    return-void
.end method

.method private final ei()V
    .registers 6

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/gE;->j6(IIIF)V

    :cond_1
    return-void
.end method

.method private final gW()V
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return-void

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;II)I
    .registers 9

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_6

    if-eq v3, v1, :cond_4

    if-eq v3, v4, :cond_6

    if-eq v3, v0, :cond_3

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    move v0, v2

    goto :goto_0

    :sswitch_0
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v3, "video/avc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :sswitch_3
    const-string v3, "video/mp4v-es"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :sswitch_4
    const-string v3, "video/hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :sswitch_5
    const-string v3, "video/3gpp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    mul-int v2, p1, p2

    move v1, v0

    :goto_2
    mul-int/lit8 v0, v2, 0x3

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "BRAVIA 4K 2015"

    sget-object v3, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v2

    mul-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    shl-int/lit8 v0, v0, 0x4

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_6
    mul-int v0, p1, p2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private final j6(Landroid/media/MediaCodec;IJ)V
    .registers 7

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    return-void
.end method

.method private final j6(Landroid/media/MediaCodec;IJJ)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->P8()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    return-void
.end method

.method private static j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nw()V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->Xa:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget v5, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    sub-long v2, v0, v2

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/gE;->j6(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->Xa:J

    :cond_0
    return-void
.end method

.method private final vy()V
    .registers 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jw:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->mb:I

    return-void
.end method


# virtual methods
.method protected final DW(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    return-void
.end method

.method public final FH()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->FH()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-eq v3, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    move v0, v1

    goto :goto_0
.end method

.method protected final QX()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->QX()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->Xa:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return-void
.end method

.method protected final XL()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->nw()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->XL()V

    return-void
.end method

.method protected final aM()V
    .registers 4

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/gE;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0
.end method

.method protected final er()V
    .registers 5

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-ne v1, v0, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-ne v2, v1, :cond_2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_3
    throw v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v5, :cond_1

    move v0, v1

    move v2, v1

    :goto_1
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzhp;->FH:I

    if-ge v2, v6, :cond_2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzhp;->j6(I)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzhp$zza;->v5:Z

    or-int/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    invoke-interface {p1, v4, v0}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v4

    if-nez v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/NA;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-lez v2, :cond_4

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-lez v5, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_6

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    float-to-double v6, v0

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/NA;->j6(IID)Z

    move-result v0

    :cond_4
    :goto_2
    iget-boolean v2, v4, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    :goto_3
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/NA;->FH:Z

    if-eqz v3, :cond_5

    const/16 v1, 0x10

    :cond_5
    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v1, v0

    goto :goto_0

    :cond_6
    mul-int v0, v2, v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/TA;->DW()I

    move-result v2

    if-gt v0, v2, :cond_7

    move v0, v3

    :goto_5
    if-nez v0, :cond_4

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    sget-object v5, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x38

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MediaCodecVideoRenderer"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    const/4 v2, 0x4

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public final j6(ILjava/lang/Object;)V
    .registers 8

    const/4 v4, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v0, :cond_4

    move-object p2, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-eq v0, p2, :cond_7

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v1, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eq p2, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->ei()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->gW()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->rN()Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eq p2, v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->ei()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->j6(Landroid/view/Surface;)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->j6(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method protected final j6(JZ)V
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(JZ)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->gW()V

    :goto_0
    return-void

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    goto :goto_0
.end method

.method protected final j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 6

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    if-eqz v1, :cond_4

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    goto :goto_3
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/Ez;)V
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    :cond_0
    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/aE;->kQ:[Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/aE;->FH(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v8

    array-length v4, v10

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/ads/cE;

    invoke-direct {v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/cE;-><init>(III)V

    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->yO:Lcom/google/android/gms/internal/ads/cE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->yO:Lcom/google/android/gms/internal/ads/cE;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/aE;->br:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/aE;->qp:I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "max-width"

    iget v9, v4, Lcom/google/android/gms/internal/ads/cE;->j6:I

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "max-height"

    iget v9, v4, Lcom/google/android/gms/internal/ads/cE;->DW:I

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v4, v4, Lcom/google/android/gms/internal/ads/cE;->FH:I

    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    const-string v8, "max-input-size"

    invoke-virtual {v7, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    if-eqz v5, :cond_1

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    if-eqz v6, :cond_2

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    invoke-virtual {v7, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-nez v4, :cond_4

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz v4, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/ads/dE;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/dE;-><init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/bE;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    :cond_5
    return-void

    :cond_6
    array-length v11, v10

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v9, v4

    :goto_1
    if-ge v9, v11, :cond_9

    aget-object v12, v10, v9

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    move-object/from16 v0, p3

    invoke-static {v4, v0, v12}, Lcom/google/android/gms/internal/ads/aE;->j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget v4, v12, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    const/4 v13, -0x1

    if-eq v4, v13, :cond_7

    iget v4, v12, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    const/4 v13, -0x1

    if-ne v4, v13, :cond_8

    :cond_7
    const/4 v4, 0x1

    :goto_2
    or-int/2addr v4, v5

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v12, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/aE;->FH(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v6, v5

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x42

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "MediaCodecVideoRenderer"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-le v4, v5, :cond_c

    const/4 v4, 0x1

    move v13, v4

    :goto_4
    if-eqz v13, :cond_d

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move v12, v4

    :goto_5
    if-eqz v13, :cond_e

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    :goto_6
    int-to-float v5, v4

    int-to-float v9, v12

    div-float v14, v5, v9

    sget-object v15, Lcom/google/android/gms/internal/ads/aE;->x9:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v5, 0x0

    move v11, v5

    :goto_7
    move/from16 v0, v16

    if-ge v11, v0, :cond_a

    aget v5, v15, v11

    int-to-float v9, v5

    mul-float/2addr v9, v14

    float-to-int v9, v9

    if-le v5, v12, :cond_a

    if-gt v9, v4, :cond_f

    :cond_a
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_b

    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Ljava/lang/String;II)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Codec max resolution adjusted to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "MediaCodecVideoRenderer"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v4, Lcom/google/android/gms/internal/ads/cE;

    invoke-direct {v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/cE;-><init>(III)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    move v13, v4

    goto :goto_4

    :cond_d
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move v12, v4

    goto :goto_5

    :cond_e
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    goto :goto_6

    :cond_f
    sget v10, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v17, 0x15

    move/from16 v0, v17

    if-lt v10, v0, :cond_11

    if-eqz v13, :cond_10

    move v10, v9

    :goto_9
    if-eqz v13, :cond_15

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5}, Lcom/google/android/gms/internal/ads/NA;->j6(II)Landroid/graphics/Point;

    move-result-object v5

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v10, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    float-to-double v0, v9

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/google/android/gms/internal/ads/NA;->j6(IID)Z

    move-result v9

    if-eqz v9, :cond_13

    move-object v4, v5

    goto :goto_8

    :cond_10
    move v10, v5

    goto :goto_9

    :cond_11
    const/16 v10, 0x10

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    mul-int v10, v5, v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/TA;->DW()I

    move-result v17

    move/from16 v0, v17

    if-gt v10, v0, :cond_13

    if-eqz v13, :cond_12

    move v10, v9

    :goto_b
    if-eqz v13, :cond_14

    move v4, v5

    :goto_c
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v5

    goto/16 :goto_8

    :cond_12
    move v10, v5

    goto :goto_b

    :cond_13
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_7

    :cond_14
    move v4, v9

    goto :goto_c

    :cond_15
    move v5, v9

    goto :goto_a

    :cond_16
    move v4, v5

    goto/16 :goto_3
.end method

.method protected final j6(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gE;->j6(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final j6(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->j3()Lcom/google/android/gms/internal/ads/Ry;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->qp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->qp:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/Dz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->DW()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j6([Lcom/google/android/gms/internal/ads/zzfs;J)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->kQ:[Lcom/google/android/gms/internal/ads/zzfs;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ty;->j6([Lcom/google/android/gms/internal/ads/zzfs;J)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many stream changes, so dropping offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecVideoRenderer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    goto :goto_1
.end method

.method protected final j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 27

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    cmp-long v4, p9, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    invoke-static {v3, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    sub-long v6, p9, v2

    if-eqz p11, :cond_1

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    sub-long v2, p9, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-ne v4, v5, :cond_3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aE;->FH(J)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-nez v4, :cond_5

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object v3, p0

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJJ)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->DW(Landroid/media/MediaCodec;IJ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    const-wide/16 v12, 0x3e8

    mul-long/2addr v4, v12

    sub-long v4, v4, p3

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v10

    move-wide/from16 v0, p9

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqs;->j6(JJ)J

    move-result-wide v8

    sub-long v2, v8, v10

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aE;->FH(J)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "dropVideoBuffer"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v3, v2, Lcom/google/android/gms/internal/ads/Dz;->Zo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/Dz;->Zo:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/Dz;->VH:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/google/android/gms/internal/ads/Dz;->VH:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->OW:I

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->nw()V

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_8
    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_9

    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    move-object v3, p0

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJJ)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    const-wide/16 v4, 0x2af8

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->DW(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected final j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 8

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/aE;->j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->yO:Lcom/google/android/gms/internal/ads/cE;

    iget v2, v1, Lcom/google/android/gms/internal/ads/cE;->j6:I

    if-gt v0, v2, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/cE;->DW:I

    if-gt v0, v2, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/cE;->FH:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final yS()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->j6(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
