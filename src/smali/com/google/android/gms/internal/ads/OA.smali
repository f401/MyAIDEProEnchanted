.class public abstract Lcom/google/android/gms/internal/ads/OA;
.super Lcom/google/android/gms/internal/ads/ty;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final u7:[B


# instance fields
.field private BT:Z

.field private final EQ:Lcom/google/android/gms/internal/ads/Jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
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
            "Lcom/google/android/gms/internal/ads/Hz",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Lcom/google/android/gms/internal/ads/Hz",
            "<",
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ty;-><init>(I)V

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/RA;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/OA;->we:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/Ez;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ez;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ez;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ez;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    new-instance v0, Lcom/google/android/gms/internal/ads/Jy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final DW(JJ)Z
    .registers 18

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    if-gez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    if-ltz v0, :cond_8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz v0, :cond_10

    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/OA;->j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_4
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    if-eqz v1, :cond_9

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    if-eqz v1, :cond_a

    const-string v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_5

    :cond_b
    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_10
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iget v8, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    aget-object v7, v0, v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->XL:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/OA;->j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private final gW()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->U2()V

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/PA;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0
.end method

.method private final yS()Z
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    if-eq v1, v8, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    aget-object v0, v3, v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    if-ne v0, v7, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-nez v0, :cond_3

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v9, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    :cond_3
    iput v8, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/OA;->u7:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    sget-object v3, Lcom/google/android/gms/internal/ads/OA;->u7:[B

    array-length v3, v3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v9, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    move v2, v7

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x4

    move v1, v2

    :goto_1
    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    const/4 v3, -0x5

    if-ne v0, v3, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iput v7, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    move v2, v7

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v7, :cond_9

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    iput v8, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v0

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iput v7, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_b
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    goto/16 :goto_0

    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->Hw()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    if-ne v0, v8, :cond_e

    iput v7, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_e
    move v2, v7

    goto/16 :goto_0

    :cond_f
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->v5()Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->getState()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x4

    if-eq v0, v4, :cond_12

    if-nez v3, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->we:Z

    if-nez v0, :cond_12

    :cond_10
    move v0, v7

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    if-eqz v0, :cond_14

    if-nez v3, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ID;->j6(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_13

    move v2, v7

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->DW()Lcom/google/android/gms/internal/ads/Iz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_12
    move v0, v2

    goto :goto_3

    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    :cond_14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->DW()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/Ez;)V

    if-eqz v3, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Az;->j6()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    if-nez v1, :cond_16

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->FH:I

    move v2, v7

    goto/16 :goto_0

    :cond_16
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_17
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    aget v6, v0, v2

    add-int/2addr v1, v6

    aput v1, v0, v2

    goto :goto_4

    :cond_18
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected DW(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v3, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Jz;->j6(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/OA;->j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne v1, v4, :cond_4

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    :goto_3
    return-void

    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    goto :goto_3
.end method

.method public FH()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Mr()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    const/4 v10, -0x1

    const/16 v4, 0x12

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hz;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->j6()Lcom/google/android/gms/internal/ads/Kz;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hz;->DW()Lcom/google/android/gms/internal/ads/Iz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    if-nez v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/VA; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    if-eqz v0, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/NA;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v0, v4, :cond_7

    if-ne v0, v4, :cond_6

    const-string v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v2, "SM-G800"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_7
    move v0, v6

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_10

    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    const-string v0, "flounder"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "flounder_lte"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "grouper"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "tilapia"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_9
    move v0, v6

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x11

    if-gt v0, v2, :cond_11

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    move v0, v6

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x17

    if-gt v0, v2, :cond_b

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x13

    if-gt v0, v2, :cond_12

    const-string v0, "hb2000"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    move v0, v6

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_13

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->BT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-gt v2, v4, :cond_14

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-ne v0, v6, :cond_14

    const-string v0, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v6

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "createCodec:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    const-string v0, "configureCodec"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v2, v3, v8}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    const-string v0, "startCodec"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/OA;->j6(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    iput v10, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput v10, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Dz;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/Dz;->j6:I

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/PA;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const v2, -0xc34f

    invoke-direct {v0, v1, v9, v7, v2}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v9

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/PA;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v7, v3}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v9

    :cond_e
    move v0, v7

    goto/16 :goto_1

    :cond_f
    move v0, v7

    goto/16 :goto_2

    :cond_10
    move v0, v7

    goto/16 :goto_3

    :cond_11
    move v0, v7

    goto/16 :goto_4

    :cond_12
    move v0, v7

    goto/16 :goto_5

    :cond_13
    move v0, v7

    goto/16 :goto_6

    :cond_14
    move v0, v7

    goto/16 :goto_7

    :cond_15
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "createCodec:"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/PA;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {v2, v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/PA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/PA;)V

    throw v9

    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9
.end method

.method protected aM()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_5
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    throw v0
.end method

.method protected er()V
    .registers 6

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->nw:[Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->SI:[Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->a8:Lcom/google/android/gms/internal/ads/NA;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->lg:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->er:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->yS:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->vy:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J0:Lcom/google/android/gms/internal/ads/Ez;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/Dz;->DW:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/Dz;->DW:I

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v1, v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v1, :cond_1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v1, :cond_2

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    :cond_2
    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0

    :catchall_5
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mr:Lcom/google/android/gms/internal/ads/Hz;

    if-eq v2, v1, :cond_3

    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->EQ:Lcom/google/android/gms/internal/ads/Jz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Jz;->j6(Lcom/google/android/gms/internal/ads/Hz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    :cond_3
    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/OA;->j3:Lcom/google/android/gms/internal/ads/Hz;

    throw v0
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->tp:Lcom/google/android/gms/internal/ads/RA;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/VA; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;
    .registers 5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    return-object v0
.end method

.method public final j6(JJ)V
    .registers 12

    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->U2()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/OA;->DW(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->yS()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->DW(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ez;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ty;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->Ws:Lcom/google/android/gms/internal/ads/Jy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    goto :goto_1

    :cond_8
    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->J8:Lcom/google/android/gms/internal/ads/Ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OA;->gW()V

    goto :goto_1
.end method

.method protected j6(JZ)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->vJ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->g3:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/OA;->KD:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/OA;->ro:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/OA;->cn:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/OA;->I:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->Mz:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->sh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->QX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->P8:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->ei:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->rN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->gW:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->Sf:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/OA;->cb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->aM:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/google/android/gms/internal/ads/OA;->dx:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/OA;->sG:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->er()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/OA;->a8()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->U2:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/OA;->ef:Z

    goto :goto_0
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
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/Dz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Dz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    return-void
.end method

.method protected abstract j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
.end method

.method protected j6(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/NA;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
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
