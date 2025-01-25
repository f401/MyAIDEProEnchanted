.class public final Lcom/google/android/gms/internal/ads/aE;
.super Lcom/google/android/gms/internal/ads/OA;


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

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/aE;->x9:[I

    return-void

    :array_a
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
    .registers 18

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/aE;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/RA;JLcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/RA;JLcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/RA;",
            "J",
            "Lcom/google/android/gms/internal/ads/Jz<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/fE;",
            "I)V"
        }
    .end annotation

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-direct {p0, p3, p2, p4, p5}, Lcom/google/android/gms/internal/ads/OA;-><init>(ILcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->OW:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    new-instance p1, Lcom/google/android/gms/internal/ads/gE;

    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/gE;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    sget p1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 p3, 0x16

    const/4 p4, 0x1

    if-gt p1, p3, :cond_3d

    const-string p1, "foster"

    sget-object p3, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "NVIDIA"

    sget-object p3, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p5, 0x1

    :cond_3d
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/aE;->br:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    const-wide p5, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    return-void
.end method

.method private final BT()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/google/android/gms/internal/ads/dE;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/dE;-><init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/bE;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    :cond_1b
    return-void
.end method

.method private final DW(Landroid/media/MediaCodec;IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->P8()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    return-void
.end method

.method private final DW(Z)Z
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-nez v0, :cond_16

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private static FH(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/aE;->j6(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static FH(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static Hw(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 2

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    :cond_6
    return p0
.end method

.method private final P8()V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->mb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->jw:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_35

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

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

    :cond_35
    return-void
.end method

.method private final ei()V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    if-eq v0, v1, :cond_16

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/gE;->j6(IIIF)V

    :cond_16
    return-void
.end method

.method private final gW()V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->lp:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    :goto_15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return-void
.end method

.method private static j6(Ljava/lang/String;II)I
    .registers 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_86

    if-ne p2, v0, :cond_7

    goto/16 :goto_86

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    sparse-switch v1, :sswitch_data_88

    goto :goto_50

    :sswitch_14
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x5

    goto :goto_51

    :sswitch_1e
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x3

    goto :goto_51

    :sswitch_28
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x2

    goto :goto_51

    :sswitch_32
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x1

    goto :goto_51

    :sswitch_3c
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x4

    goto :goto_51

    :sswitch_46
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p0, -0x1

    :goto_51
    if-eqz p0, :cond_7d

    if-eq p0, v3, :cond_7d

    if-eq p0, v5, :cond_61

    if-eq p0, v4, :cond_7d

    if-eq p0, v6, :cond_5e

    if-eq p0, v2, :cond_5e

    return v0

    :cond_5e
    mul-int p1, p1, p2

    goto :goto_80

    :cond_61
    const-string p0, "BRAVIA 4K 2015"

    sget-object v1, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    return v0

    :cond_6c
    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result p0

    mul-int p1, p1, p0

    shl-int/lit8 p0, p1, 0x4

    shl-int/2addr p0, v6

    move p1, p0

    goto :goto_7f

    :cond_7d
    mul-int p1, p1, p2

    :goto_7f
    const/4 v6, 0x2

    :goto_80
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v6, v6, 0x2

    div-int/2addr p1, v6

    return p1

    :cond_86
    :goto_86
    return v0

    nop

    :sswitch_data_88
    .sparse-switch
        -0x63306f58 -> :sswitch_46
        -0x63185e82 -> :sswitch_3c
        0x46cdc642 -> :sswitch_32
        0x4f62373a -> :sswitch_28
        0x5f50bed8 -> :sswitch_1e
        0x5f50bed9 -> :sswitch_14
    .end sparse-switch
.end method

.method private final j6(Landroid/media/MediaCodec;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    return-void
.end method

.method private final j6(Landroid/media/MediaCodec;IJJ)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->P8()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    return-void
.end method

.method private static j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v1

    if-ne v0, v1, :cond_24

    if-nez p0, :cond_22

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne p0, v0, :cond_24

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne p0, p1, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private final nw()V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    if-lez v0, :cond_18

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

    :cond_18
    return-void
.end method

.method private final vy()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->ye:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->WB:I

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/aE;->jw:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->mb:I

    return-void
.end method


# virtual methods
.method protected final DW(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_12

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_12
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aE;->Hw(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    return-void
.end method

.method public final FH()Z
    .registers 10

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->FH()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-eq v4, v0, :cond_1e

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_1e
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return v1

    :cond_21
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_29

    return v0

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_34

    return v1

    :cond_34
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return v0
.end method

.method protected final QX()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->QX()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->Xa:J

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

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

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqs;->j6()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    :try_start_25
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    return-void

    :catchall_35
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

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-ne v2, v1, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_e
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz v2, :cond_26

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-ne v3, v2, :cond_1f

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_26
    throw v1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    const/4 v4, 0x0

    :goto_10
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzhp;->FH:I

    if-ge v4, v5, :cond_1e

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhp;->j6(I)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzhp$zza;->v5:Z

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1e
    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_26

    return v0

    :cond_26
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/NA;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-lez v3, :cond_8c

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-lez v4, :cond_8c

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_44

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    float-to-double v0, p2

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/NA;->j6(IID)Z

    move-result v1

    goto :goto_8c

    :cond_44
    mul-int v3, v3, v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/TA;->DW()I

    move-result v1

    if-gt v3, v1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-nez v0, :cond_8b

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    sget-object v3, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ["

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MediaCodecVideoRenderer"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    move v1, v0

    :cond_8c
    :goto_8c
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    if-eqz p2, :cond_93

    const/16 p2, 0x8

    goto :goto_94

    :cond_93
    const/4 p2, 0x4

    :goto_94
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/NA;->FH:Z

    if-eqz p1, :cond_9a

    const/16 v2, 0x10

    :cond_9a
    if-eqz v1, :cond_9e

    const/4 p1, 0x3

    goto :goto_9f

    :cond_9e
    const/4 p1, 0x2

    :goto_9f
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method public final j6(ILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7a

    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eqz p1, :cond_d

    move-object p2, p1

    goto :goto_25

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->rN()Lcom/google/android/gms/internal/ads/NA;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-eq p1, p2, :cond_65

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_34

    if-ne p1, v1, :cond_4c

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_46

    if-eqz v0, :cond_46

    if-eqz p2, :cond_46

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_4c

    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    :cond_4c
    :goto_4c
    if-eqz p2, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eq p2, v0, :cond_5e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->ei()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    if-ne p1, v1, :cond_64

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->gW()V

    return-void

    :cond_5e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->vy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    :cond_64
    return-void

    :cond_65
    if-eqz p2, :cond_79

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-eq p2, p1, :cond_79

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->ei()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/gE;->j6(Landroid/view/Surface;)V

    :cond_79
    return-void

    :cond_7a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_91

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->lg()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_90

    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_90
    return-void

    :cond_91
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method protected final j6(JZ)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(JZ)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->BT()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->hz:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    :cond_17
    if-eqz p3, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aE;->gW()V

    return-void

    :cond_1d
    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/aE;->CU:J

    return-void
.end method

.method protected final j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 9

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_31

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_37

    :cond_31
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_37
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    if-eqz v1, :cond_46

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_4c

    :cond_46
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->FN:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    sget p2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_72

    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_62

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_76

    :cond_62
    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->jO:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->oY:I

    const/high16 p2, 0x3f800000  # 1.0f

    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->Ev:F

    goto :goto_76

    :cond_72
    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->aq:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/aE;->ko:I

    :cond_76
    :goto_76
    iget p2, p0, Lcom/google/android/gms/internal/ads/aE;->wc:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/Ez;)V
    .registers 3

    sget p1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_d

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aE;->yS()V

    :cond_d
    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->kQ:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/aE;->FH(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v7

    array-length v8, v4

    const/4 v10, -0x1

    const/4 v12, 0x1

    if-ne v8, v12, :cond_1e

    new-instance v4, Lcom/google/android/gms/internal/ads/cE;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cE;-><init>(III)V

    goto/16 :goto_137

    :cond_1e
    array-length v8, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_21
    if-ge v13, v8, :cond_51

    aget-object v15, v4, v13

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    invoke-static {v9, v3, v15}, Lcom/google/android/gms/internal/ads/aE;->j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v9

    if-eqz v9, :cond_4e

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-eq v9, v10, :cond_38

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v9, v10, :cond_36

    goto :goto_38

    :cond_36
    const/4 v9, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v9, 0x1

    :goto_39
    or-int/2addr v14, v9

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/aE;->FH(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_4e
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    :cond_51
    if-eqz v14, :cond_132

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v8, 0x42

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "MediaCodecVideoRenderer"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-le v4, v13, :cond_7b

    const/4 v4, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v4, 0x0

    :goto_7c
    if-eqz v4, :cond_81

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    goto :goto_83

    :cond_81
    iget v13, v3, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    :goto_83
    if-eqz v4, :cond_88

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    goto :goto_8a

    :cond_88
    iget v14, v3, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    :goto_8a
    int-to-float v15, v14

    int-to-float v12, v13

    div-float/2addr v15, v12

    sget-object v12, Lcom/google/android/gms/internal/ads/aE;->x9:[I

    array-length v11, v12

    const/4 v10, 0x0

    :goto_91
    if-ge v10, v11, :cond_fd

    move/from16 v16, v11

    aget v11, v12, v10

    move-object/from16 v17, v12

    int-to-float v12, v11

    mul-float v12, v12, v15

    float-to-int v12, v12

    if-le v11, v13, :cond_fd

    if-gt v12, v14, :cond_a3

    goto/16 :goto_fd

    :cond_a3
    move/from16 v18, v13

    sget v13, Lcom/google/android/gms/internal/ads/TD;->j6:I

    move/from16 v19, v14

    const/16 v14, 0x15

    if-lt v13, v14, :cond_cc

    if-eqz v4, :cond_b1

    move v13, v12

    goto :goto_b2

    :cond_b1
    move v13, v11

    :goto_b2
    if-eqz v4, :cond_b5

    goto :goto_b6

    :cond_b5
    move v11, v12

    :goto_b6
    invoke-virtual {v1, v13, v11}, Lcom/google/android/gms/internal/ads/NA;->j6(II)Landroid/graphics/Point;

    move-result-object v11

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v13, v11, Landroid/graphics/Point;->x:I

    iget v14, v11, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v11

    float-to-double v11, v12

    invoke-virtual {v1, v13, v14, v11, v12}, Lcom/google/android/gms/internal/ads/NA;->j6(IID)Z

    move-result v11

    if-eqz v11, :cond_f2

    move-object/from16 v11, v20

    goto :goto_fe

    :cond_cc
    const/16 v13, 0x10

    invoke-static {v11, v13}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    mul-int v13, v11, v12

    invoke-static {}, Lcom/google/android/gms/internal/ads/TA;->DW()I

    move-result v14

    if-gt v13, v14, :cond_f2

    if-eqz v4, :cond_e6

    move v10, v12

    goto :goto_e7

    :cond_e6
    move v10, v11

    :goto_e7
    if-eqz v4, :cond_ea

    goto :goto_eb

    :cond_ea
    move v11, v12

    :goto_eb
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v11, v4

    goto :goto_fe

    :cond_f2
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    goto :goto_91

    :cond_fd
    :goto_fd
    const/4 v11, 0x0

    :goto_fe
    if-eqz v11, :cond_132

    iget v4, v11, Landroid/graphics/Point;->x:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v4, v11, Landroid/graphics/Point;->y:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/aE;->j6(Ljava/lang/String;II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v10, 0x39

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Codec max resolution adjusted to: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    new-instance v4, Lcom/google/android/gms/internal/ads/cE;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cE;-><init>(III)V

    :goto_137
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->yO:Lcom/google/android/gms/internal/ads/cE;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/aE;->br:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/aE;->qp:I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v7, "max-width"

    iget v8, v4, Lcom/google/android/gms/internal/ads/cE;->j6:I

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v7, "max-height"

    iget v8, v4, Lcom/google/android/gms/internal/ads/cE;->DW:I

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v4, v4, Lcom/google/android/gms/internal/ads/cE;->FH:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_159

    const-string v7, "max-input-size"

    invoke-virtual {v3, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_159
    if-eqz v5, :cond_161

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_161
    if-eqz v6, :cond_16e

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_16e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-nez v4, :cond_18d

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-nez v4, :cond_189

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aE;->Qq:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    :cond_189
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    :cond_18d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1a5

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    if-eqz v1, :cond_1a5

    new-instance v1, Lcom/google/android/gms/internal/ads/dE;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/dE;-><init>(Lcom/google/android/gms/internal/ads/aE;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/bE;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/aE;->k2:Lcom/google/android/gms/internal/ads/dE;

    :cond_1a5
    return-void
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
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->j3()Lcom/google/android/gms/internal/ads/Ry;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/aE;->qp:I

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aE;->fY:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/Dz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->DW()V

    return-void
.end method

.method protected final j6([Lcom/google/android/gms/internal/ads/zzfs;J)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aE;->kQ:[Lcom/google/android/gms/internal/ads/zzfs;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/aE;->zh:J

    goto :goto_40

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    array-length v2, v1

    if-ne v0, v2, :cond_34

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

    goto :goto_38

    :cond_34
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/aE;->AL:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    :goto_40
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ty;->j6([Lcom/google/android/gms/internal/ads/zzfs;J)V

    return-void
.end method

.method protected final j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 31

    move-object/from16 v8, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v0, p9

    :goto_8
    iget v4, v8, Lcom/google/android/gms/internal/ads/aE;->AL:I

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_20

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/aE;->XX:[J

    aget-wide v10, v6, v5

    cmp-long v7, v0, v10

    if-ltz v7, :cond_20

    iput-wide v10, v8, Lcom/google/android/gms/internal/ads/aE;->zh:J

    add-int/lit8 v4, v4, -0x1

    iput v4, v8, Lcom/google/android/gms/internal/ads/aE;->AL:I

    invoke-static {v6, v9, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_20
    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/aE;->zh:J

    sub-long v6, v0, v6

    if-eqz p11, :cond_2a

    invoke-direct {v8, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_2a
    sub-long v10, v0, p1

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/aE;->jJ:Landroid/view/Surface;

    if-ne v4, v12, :cond_3d

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/aE;->FH(J)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {v8, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_3c
    return v5

    :cond_3d
    iget-boolean v4, v8, Lcom/google/android/gms/internal/ads/aE;->et:Z

    const/16 v12, 0x15

    if-nez v4, :cond_5b

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v0, v12, :cond_57

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide v4, v6

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJJ)V

    goto :goto_5a

    :cond_57
    invoke-direct {v8, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->DW(Landroid/media/MediaCodec;IJ)V

    :goto_5a
    return v9

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_63

    return v5

    :cond_63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/aE;->sy:Lcom/google/android/gms/internal/ads/zzqs;

    const-wide/16 v17, 0x3e8

    mul-long v13, v13, v17

    sub-long v13, v13, p3

    sub-long/2addr v10, v13

    mul-long v10, v10, v17

    add-long/2addr v10, v15

    invoke-virtual {v4, v0, v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzqs;->j6(JJ)J

    move-result-wide v10

    sub-long v0, v10, v15

    div-long v0, v0, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aE;->FH(J)Z

    move-result v4

    if-eqz v4, :cond_b3

    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Zo:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->Zo:I

    iget v1, v8, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    add-int/2addr v1, v9

    iput v1, v8, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    iget v1, v8, Lcom/google/android/gms/internal/ads/aE;->hz:I

    add-int/2addr v1, v9

    iput v1, v8, Lcom/google/android/gms/internal/ads/aE;->hz:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/Dz;->VH:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->VH:I

    iget v0, v8, Lcom/google/android/gms/internal/ads/aE;->Eq:I

    iget v1, v8, Lcom/google/android/gms/internal/ads/aE;->OW:I

    if-ne v0, v1, :cond_b2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aE;->nw()V

    :cond_b2
    return v9

    :cond_b3
    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v4, v12, :cond_ca

    const-wide/32 v12, 0xc350

    cmp-long v4, v0, v12

    if-gez v4, :cond_eb

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide v4, v6

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aE;->j6(Landroid/media/MediaCodec;IJJ)V

    return v9

    :cond_ca
    const-wide/16 v10, 0x7530

    cmp-long v4, v0, v10

    if-gez v4, :cond_eb

    const-wide/16 v4, 0x2af8

    cmp-long v10, v0, v4

    if-lez v10, :cond_e7

    const-wide/16 v4, 0x2710

    sub-long/2addr v0, v4

    :try_start_d9
    div-long v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_de
    .catch Ljava/lang/InterruptedException; {:try_start_d9 .. :try_end_de} :catch_df

    goto :goto_e7

    :catch_df
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e7
    :goto_e7
    invoke-direct {v8, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/aE;->DW(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_eb
    return v5
.end method

.method protected final j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/aE;->j6(ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aE;->yO:Lcom/google/android/gms/internal/ads/cE;

    iget p3, p2, Lcom/google/android/gms/internal/ads/cE;->j6:I

    if-gt p1, p3, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget p3, p2, Lcom/google/android/gms/internal/ads/cE;->DW:I

    if-gt p1, p3, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/cE;->FH:I

    if-gt p1, p2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    if-nez v0, :cond_f

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aE;->DW(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method final yS()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aE;->et:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aE;->aj:Lcom/google/android/gms/internal/ads/gE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aE;->XG:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gE;->j6(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method
