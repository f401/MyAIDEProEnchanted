.class public abstract Lcom/google/android/gms/internal/ads/OA;
.super Lcom/google/android/gms/internal/ads/ty;


# static fields
.field private static final u7:[B


# instance fields
.field private BT:Z

.field private final EQ:Lcom/google/android/gms/internal/ads/Jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Jz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private final J0:Lcom/google/android/gms/internal/ads/Ez;

.field private final J8:Lcom/google/android/gms/internal/ads/Ez;

.field private KD:J

.field private Mr:Lcom/google/android/gms/internal/ads/Hz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Hz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Mz:Z

.field private P8:Z

.field private final QX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private SI:[Ljava/nio/ByteBuffer;

.field private Sf:Z

.field private U2:Landroid/media/MediaCodec;

.field private final Ws:Lcom/google/android/gms/internal/ads/Jy;

.field private final XL:Landroid/media/MediaCodec$BufferInfo;

.field private a8:Lcom/google/android/gms/internal/ads/NA;

.field private aM:Lcom/google/android/gms/internal/ads/zzfs;

.field protected ca:Lcom/google/android/gms/internal/ads/Dz;

.field private cb:Z

.field private cn:I

.field private dx:I

.field private ef:Z

.field private ei:Z

.field private er:Z

.field private g3:Z

.field private gW:Z

.field private j3:Lcom/google/android/gms/internal/ads/Hz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Hz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lg:Z

.field private nw:[Ljava/nio/ByteBuffer;

.field private rN:Z

.field private ro:I

.field private sG:I

.field private sh:Z

.field private final tp:Lcom/google/android/gms/internal/ads/RA;

.field private vJ:Z

.field private vy:Z

.field private final we:Z

.field private yS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->VH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/OA;->u7:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ty;-><init>(I)V

    sget p1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-lt p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/RA;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/OA;->we:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/Ez;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/Ez;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    new-instance p1, Lcom/google/android/gms/internal/ads/Ez;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/Ez;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    new-instance p1, Lcom/google/android/gms/internal/ads/Jy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Jy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    return-void
.end method

.method private final DW(JJ)Z
    .registers 22

    move-object/from16 v13, p0

    iget v0, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-gez v0, :cond_e2

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz v0, :cond_2a

    :try_start_13
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_34

    :catch_1e
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    :cond_29
    return v12

    :cond_2a
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    :goto_34
    iget v0, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    if-ltz v0, :cond_94

    iget-boolean v1, v13, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    if-eqz v1, :cond_46

    iput-boolean v12, v13, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v14, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    return v15

    :cond_46
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    iput v14, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    return v12

    :cond_54
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_69

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_69
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_74
    if-ge v3, v2, :cond_90

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_8d

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_91

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_90
    const/4 v0, 0x0

    :goto_91
    iput-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    goto :goto_e2

    :cond_94
    const/4 v1, -0x2

    if-ne v0, v1, :cond_c5

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, v13, Lcom/google/android/gms/internal/ads/OA;->er:Z

    if-eqz v1, :cond_b6

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b6

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b6

    iput-boolean v15, v13, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    goto :goto_c4

    :cond_b6
    iget-boolean v1, v13, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    if-eqz v1, :cond_bf

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_bf
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v13, v1, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_c4
    return v15

    :cond_c5
    const/4 v1, -0x3

    if-ne v0, v1, :cond_d1

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    return v15

    :cond_d1
    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-eqz v0, :cond_e1

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    if-nez v0, :cond_de

    iget v0, v13, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e1

    :cond_de
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    :cond_e1
    return v12

    :cond_e2
    :goto_e2
    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    if-eqz v0, :cond_11a

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz v0, :cond_11a

    :try_start_ea
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iget v8, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    aget-object v7, v0, v8

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->sh:Z
    :try_end_fc
    .catch Ljava/lang/IllegalStateException; {:try_start_ea .. :try_end_fc} :catch_10c

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    const/16 v16, 0x0

    move v12, v0

    :try_start_105
    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/OA;->j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_109
    .catch Ljava/lang/IllegalStateException; {:try_start_105 .. :try_end_109} :catch_10a

    goto :goto_136

    :catch_10a
    move-exception v0

    goto :goto_10f

    :catch_10c
    move-exception v0

    const/16 v16, 0x0

    :goto_10f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_119

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    :cond_119
    return v16

    :cond_11a
    const/16 v16, 0x0

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iget v8, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    aget-object v7, v0, v8

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v13, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/OA;->j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_136
    if-eqz v0, :cond_13f

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v14, v13, Lcom/google/android/gms/internal/ads/OA;->cn:I

    return v15

    :cond_13f
    return v16
.end method

.method private final gW()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->U2()V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/PA;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object p1

    throw p1
.end method

.method private final yS()Z
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d0

    iget v2, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    if-eqz v2, :cond_10

    goto/16 :goto_1d0

    :cond_10
    iget v2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    if-gez v2, :cond_2a

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    if-gez v0, :cond_1f

    return v1

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    :cond_2a
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_47

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-nez v0, :cond_44

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    :cond_44
    iput v3, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    return v1

    :cond_47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    if-eqz v0, :cond_67

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/OA;->u7:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v7, 0x0

    array-length v8, v1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    return v4

    :cond_67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-eqz v0, :cond_6e

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_a6

    :cond_6e
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v4, :cond_93

    const/4 v0, 0x0

    :goto_73
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_91

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_91
    iput v3, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v5

    move v13, v5

    move v5, v0

    move v0, v13

    :goto_a6
    const/4 v6, -0x3

    if-ne v0, v6, :cond_aa

    return v1

    :cond_aa
    const/4 v6, -0x5

    if-ne v0, v6, :cond_c0

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v3, :cond_b8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_b8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    return v4

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v3, :cond_d3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_d3
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    if-nez v0, :cond_dd

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    return v1

    :cond_dd
    :try_start_dd
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-nez v0, :cond_f1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I
    :try_end_f1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_dd .. :try_end_f1} :catch_f2

    :cond_f1
    return v1

    :catch_f2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_fc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->Hw()Z

    move-result v0

    if-nez v0, :cond_114

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v3, :cond_113

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_113
    return v4

    :cond_114
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->v5()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v3, :cond_140

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Hz;->getState()I

    move-result v3

    if-eqz v3, :cond_131

    const/4 v6, 0x4

    if-eq v3, v6, :cond_140

    if-nez v0, :cond_12f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->we:Z

    if-nez v3, :cond_140

    :cond_12f
    const/4 v3, 0x1

    goto :goto_141

    :cond_131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->DW()Lcom/google/android/gms/internal/ads/Iz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_140
    const/4 v3, 0x0

    :goto_141
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-eqz v3, :cond_146

    return v1

    :cond_146
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    if-eqz v3, :cond_160

    if-nez v0, :cond_160

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ID;->j6(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_15e

    return v4

    :cond_15e
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    :cond_160
    :try_start_160
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zz;->DW()Z

    move-result v3

    if-eqz v3, :cond_175

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_175
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/Ez;)V

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Az;->j6()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    if-nez v5, :cond_18e

    goto :goto_19d

    :cond_18e
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_196

    new-array v0, v4, [I

    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_196
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I
    :try_end_198
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_160 .. :try_end_198} :catch_1c6

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    :goto_19d
    :try_start_19d
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_1b8

    :cond_1a7
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1b8
    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->FH:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->FH:I
    :try_end_1c5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19d .. :try_end_1c5} :catch_1c6

    return v4

    :catch_1c6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_1d0
    :goto_1d0
    return v1
.end method


# virtual methods
.method protected DW(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v2, v1

    goto :goto_d

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_d
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    if-eqz p1, :cond_37

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/Jz;->j6(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-ne p1, v1, :cond_49

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V

    goto :goto_49

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object p1

    throw p1

    :cond_47
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-ne p1, v1, :cond_7a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz p1, :cond_7a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/OA;->j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result p1

    if-eqz p1, :cond_7a

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne v1, v3, :cond_76

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne p1, v0, :cond_76

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    return-void

    :cond_7a
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    if-eqz p1, :cond_81

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    return-void

    :cond_81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    return-void
.end method

.method public FH()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Mr()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    if-gez v0, :cond_27

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    return v0
.end method

.method public final J8()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected QX()V
    .registers 1

    return-void
.end method

.method protected U2()V
    .registers 1

    return-void
.end method

.method protected XL()V
    .registers 1

    return-void
.end method

.method protected final a8()V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-nez v0, :cond_219

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v0, :cond_a

    goto/16 :goto_219

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hz;->getState()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->j6()Lcom/google/android/gms/internal/ads/Kz;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->DW()Lcom/google/android/gms/internal/ads/Iz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_69

    :try_start_41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;
    :try_end_49
    .catch Lcom/google/android/gms/internal/ads/VA; {:try_start_41 .. :try_end_49} :catch_5a

    if-eqz v0, :cond_4c

    goto :goto_69

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/ads/PA;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const v4, -0xc34f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v2

    :catch_5a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/PA;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v3, v5}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v2

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/NA;)Z

    move-result v0

    if-nez v0, :cond_72

    return-void

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_91

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const/4 v1, 0x1

    goto :goto_92

    :cond_91
    const/4 v1, 0x0

    :goto_92
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v4, 0x13

    const/16 v6, 0x12

    if-lt v1, v6, :cond_cf

    if-ne v1, v6, :cond_ae

    const-string v1, "OMX.SEC.avc.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    :cond_ae
    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ne v1, v4, :cond_cd

    sget-object v1, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v7, "SM-G800"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const-string v1, "OMX.Exynos.avc.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    goto :goto_cf

    :cond_cd
    const/4 v1, 0x0

    goto :goto_d0

    :cond_cf
    :goto_cf
    const/4 v1, 0x1

    :goto_d0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v7, 0x18

    if-ge v1, v7, :cond_112

    const-string v1, "OMX.Nvidia.h264.decode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    :cond_e8
    const-string v1, "flounder"

    sget-object v7, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    const-string v1, "flounder_lte"

    sget-object v7, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    const-string v1, "grouper"

    sget-object v7, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    const-string v1, "tilapia"

    sget-object v7, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    :cond_110
    const/4 v1, 0x1

    goto :goto_113

    :cond_112
    const/4 v1, 0x0

    :goto_113
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v7, 0x11

    if-gt v1, v7, :cond_12d

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12b

    const-string v1, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    :cond_12b
    const/4 v1, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v1, 0x0

    :goto_12e
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v7, 0x17

    if-gt v1, v7, :cond_13e

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    :cond_13e
    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-gt v1, v4, :cond_15e

    const-string v1, "hb2000"

    sget-object v4, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    :cond_15c
    const/4 v1, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v1, 0x0

    :goto_15f
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ne v1, v5, :cond_16f

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    const/4 v1, 0x1

    goto :goto_170

    :cond_16f
    const/4 v1, 0x0

    :goto_170
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-gt v4, v6, :cond_186

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-ne v1, v10, :cond_186

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    const/4 v1, 0x1

    goto :goto_187

    :cond_186
    const/4 v1, 0x0

    :goto_187
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    :try_start_189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_195} :catch_20d

    const-string v7, "createCodec:"

    if-eqz v6, :cond_19e

    :try_start_199
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a3

    :cond_19e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    const-string v1, "configureCodec"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    const-string v1, "startCodec"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-object v4, p0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/OA;->j6(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1e8} :catch_20d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_1fc

    :cond_1f7
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    :goto_1fc
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->j6:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->j6:I

    return-void

    :catch_20d
    move-exception v1

    new-instance v4, Lcom/google/android/gms/internal/ads/PA;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {v4, v5, v1, v3, v0}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v2

    :cond_219
    :goto_219
    return-void
.end method

.method protected aM()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_40

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_27

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v1, v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    :cond_1c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    return-void

    :catchall_21
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_27
    move-exception v1

    :try_start_28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v3, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_3a

    :cond_35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_3a
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_40
    move-exception v1

    :try_start_41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_64

    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_59

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v3, :cond_59

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5e

    :cond_59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_5e
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_64
    move-exception v1

    :try_start_65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_72

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v3, :cond_72

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_77

    :cond_72
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1

    :catchall_77
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v1
.end method

.method protected er()V
    .registers 5

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_b3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v3, v2, Lcom/google/android/gms/internal/ads/Dz;->DW:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/Dz;->DW:I

    :try_start_47
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7e

    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_66

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v0, :cond_65

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v0, :cond_65

    :try_start_59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_61

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    return-void

    :catchall_61
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_7d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v3, v2, :cond_7d

    :try_start_71
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_79

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    goto :goto_7d

    :catchall_79
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :cond_7d
    :goto_7d
    throw v0

    :catchall_7e
    move-exception v0

    :try_start_7f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_9b

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_9a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v3, v2, :cond_9a

    :try_start_8e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_96

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    goto :goto_9a

    :catchall_96
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :cond_9a
    :goto_9a
    throw v0

    :catchall_9b
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v2, :cond_b2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v3, v2, :cond_b2

    :try_start_a6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_ae

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    goto :goto_b2

    :catchall_ae
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :cond_b2
    :goto_b2
    throw v0

    :cond_b3
    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result p1
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/VA; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object p1

    throw p1
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;
    .registers 4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object p1

    return-object p1
.end method

.method public final j6(JJ)V
    .registers 10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->U2()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v0

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    goto :goto_37

    :cond_26
    if-ne v0, v1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    :cond_36
    return-void

    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_53

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    :cond_43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/OA;->DW(JJ)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->yS()Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    goto :goto_7e

    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->DW(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result p1

    if-ne p1, v2, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    goto :goto_7e

    :cond_6e
    if-ne p1, v1, :cond_7e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    return-void
.end method

.method protected j6(JZ)V
    .registers 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz p2, :cond_4f

    const-wide p2, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    if-nez p3, :cond_3f

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    if-eqz p3, :cond_32

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz p3, :cond_32

    goto :goto_3f

    :cond_32
    iget p3, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    if-eqz p3, :cond_37

    goto :goto_3f

    :cond_37
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    goto :goto_45

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    :goto_45
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz p1, :cond_4f

    iput p2, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_4f
    return-void
.end method

.method protected abstract j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/Ez;)V
    .registers 2

    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V
.end method

.method protected abstract j6(Ljava/lang/String;JJ)V
.end method

.method protected j6(Z)V
    .registers 2

    new-instance p1, Lcom/google/android/gms/internal/ads/Dz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Dz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    return-void
.end method

.method protected abstract j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
.end method

.method protected j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/NA;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected final lg()Landroid/media/MediaCodec;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final rN()Lcom/google/android/gms/internal/ads/NA;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    return-object v0
.end method
