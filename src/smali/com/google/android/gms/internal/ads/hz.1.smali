.class public final Lcom/google/android/gms/internal/ads/hz;
.super Ljava/lang/Object;


# instance fields
.field private BT:J

.field private final DW:Lcom/google/android/gms/internal/ads/rz;

.field private EQ:I

.field private final FH:Lcom/google/android/gms/internal/ads/yz;

.field private final Hw:[Lcom/google/android/gms/internal/ads/Yy;

.field private I:Ljava/nio/ByteBuffer;

.field private J0:I

.field private J8:I

.field private KD:J

.field private Mr:Lcom/google/android/gms/internal/ads/Ny;

.field private Mz:[Ljava/nio/ByteBuffer;

.field private OW:I

.field private P8:J

.field private QX:Z

.field private Qq:I

.field private SI:J

.field private Sf:J

.field private U2:J

.field private final VH:[J

.field private Ws:I

.field private XL:I

.field private XX:Z

.field private final Zo:Landroid/os/ConditionVariable;

.field private a8:J

.field private aM:J

.field private aj:Z

.field private br:Z

.field private ca:Ljava/nio/ByteBuffer;

.field private cb:I

.field private cn:J

.field private dx:I

.field private ef:J

.field private ei:Ljava/lang/reflect/Method;

.field private er:I

.field private g3:[Lcom/google/android/gms/internal/ads/Yy;

.field private gW:J

.field private final gn:Lcom/google/android/gms/internal/ads/jz;

.field private j3:Lcom/google/android/gms/internal/ads/Ny;

.field private final j6:Lcom/google/android/gms/internal/ads/Xy;

.field private kQ:J

.field private lg:Ljava/nio/ByteBuffer;

.field private lp:Z

.field private nw:I

.field private rN:I

.field private ro:I

.field private sG:J

.field private sh:J

.field private sy:I

.field private tp:Landroid/media/AudioTrack;

.field private final u7:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/oz;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/ads/nz;

.field private vJ:F

.field private vy:Z

.field private we:I

.field private x9:[B

.field private yS:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;Lcom/google/android/gms/internal/ads/nz;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->j6:Lcom/google/android/gms/internal/ads/Xy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/kz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/rz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->DW:Lcom/google/android/gms/internal/ads/rz;

    new-instance v0, Lcom/google/android/gms/internal/ads/yz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    new-instance v1, Lcom/google/android/gms/internal/ads/wz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/wz;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->DW:Lcom/google/android/gms/internal/ads/rz;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    aput-object v2, v0, v1

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    new-array v0, v3, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/jz;-><init>(Lcom/google/android/gms/internal/ads/iz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static DW(Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    :goto_1
    return v0

    :sswitch_0
    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "audio/eac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "audio/ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string v1, "audio/vnd.dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch
.end method

.method private final DW(J)J
    .registers 8

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final DW(Ljava/nio/ByteBuffer;J)Z
    .registers 14

    const/16 v5, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ge v0, v5, :cond_b

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v6

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v8, v0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    sub-int v0, v4, v0

    if-lez v0, :cond_a

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_2

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->kQ:J

    if-ltz v0, :cond_13

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    :cond_3
    if-ne v0, v3, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ge v0, v5, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    if-eqz v3, :cond_7

    array-length v3, v3

    if-ge v3, v0, :cond_8

    :cond_7
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    goto/16 :goto_2

    :cond_9
    if-ge v0, v5, :cond_f

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_11

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v4

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_c

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    invoke-virtual {v0, v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v5, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_9

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v4, p1, v3, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_10

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    goto/16 :goto_3

    :cond_10
    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, v3, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    goto/16 :goto_3

    :cond_12
    move v1, v2

    goto/16 :goto_0

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/ads/qz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/qz;-><init>(I)V

    throw v1
.end method

.method private final EQ()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final FH(J)J
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final J0()Z
    .registers 11

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    :goto_1
    move v0, v2

    :goto_2
    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v3, v4, v3

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Yy;->v5()V

    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/google/android/gms/internal/ads/hz;->j6(J)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Yy;->Hw()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_3
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    :cond_6
    iput v6, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    move v1, v2

    goto :goto_3
.end method

.method private final J8()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method private final QX()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->er:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->BT:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->P8:J

    return-void
.end method

.method private final Ws()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private final XL()Z
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hz;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private final j6(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v2, v0

    move v1, v2

    :goto_0
    if-ltz v1, :cond_2

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v0, v0, v3

    :cond_0
    :goto_1
    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    aget-object v3, v3, v1

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/Yy;->j6(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private final we()V
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->Zo()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lcom/google/android/gms/internal/ads/Yy;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->ef:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final DW(I)V
    .registers 5

    const/4 v1, 0x1

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    return-void
.end method

.method public final Hw()V
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->SI:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->KD:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/ads/jz;->j6(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/hz;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final VH()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/jz;->j6(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    goto :goto_0
.end method

.method public final Zo()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    :cond_0
    return-void
.end method

.method public final gn()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final j6(Z)J
    .registers 14

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->FH()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->BT:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->er:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->er:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    :cond_2
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->BT:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    if-ge v0, v1, :cond_3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    aget-wide v8, v8, v0

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->P8:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->Hw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->v5()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jz;->Zo()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/hz;->ef:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-nez v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->aM:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring impossibly large audio latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "AudioTrack"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->P8:J

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jz;->v5()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jz;->Zo()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v0

    move-wide v2, v0

    :goto_5
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->DW(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->DW(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->FH(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    goto :goto_6

    :cond_7
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x88

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "AudioTrack"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x8a

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "AudioTrack"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;

    goto/16 :goto_4

    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->FH()J

    move-result-wide v0

    :goto_7
    if-nez p1, :cond_e

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto/16 :goto_5

    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    add-long/2addr v0, v2

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long/2addr v0, v2

    :goto_8
    add-long/2addr v0, v8

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yz;->gn()J

    move-result-wide v0

    const-wide/16 v4, 0x400

    cmp-long v0, v0, v4

    if-ltz v0, :cond_d

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yz;->VH()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/yz;->gn()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    move-wide v0, v6

    :goto_9
    add-long/2addr v0, v2

    goto :goto_8

    :cond_d
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long/2addr v2, v6

    long-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_9

    :cond_e
    move-wide v2, v0

    goto/16 :goto_5
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yz;->j6(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    iget v2, p1, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/yz;->DW(F)F

    new-instance v1, Lcom/google/android/gms/internal/ads/Ny;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Ny;-><init>(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_2
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->j6()V

    :cond_0
    return-void
.end method

.method public final j6(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J8()V

    :cond_0
    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;IIII[I)V
    .registers 21

    const-string v2, "audio/raw"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-nez v8, :cond_4

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->DW(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->nw:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->DW:Lcom/google/android/gms/internal/ads/rz;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/rz;->j6([I)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v10, v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    move v3, v4

    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v4, v9, v7

    :try_start_0
    move/from16 v0, p3

    invoke-interface {v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Yy;->j6(III)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Zy; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    or-int/2addr v6, v11

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->Zo()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->j6()I

    move-result v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->FH()I

    move-result v3

    :cond_0
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_1
    move/from16 v4, p4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/ads/lz;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/lz;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->we()V

    :cond_3
    move/from16 p2, v2

    move v4, v3

    :goto_2
    const/16 v3, 0xfc

    packed-switch p2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported channel count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/android/gms/internal/ads/lz;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/lz;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v2, 0x0

    move v6, v2

    goto :goto_2

    :pswitch_0
    sget v2, Lcom/google/android/gms/internal/ads/uy;->j6:I

    :goto_3
    sget v7, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v9, 0x17

    if-gt v7, v9, :cond_5

    const-string v7, "foster"

    sget-object v9, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "NVIDIA"

    sget-object v9, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x3

    move/from16 v0, p2

    if-eq v0, v7, :cond_11

    const/4 v7, 0x5

    move/from16 v0, p2

    if-eq v0, v7, :cond_11

    const/4 v3, 0x7

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    :cond_5
    :goto_4
    sget v3, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v7, 0x19

    if-gt v3, v7, :cond_10

    const-string v3, "fugu"

    sget-object v7, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v8, :cond_10

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    const/16 v2, 0xc

    move v3, v2

    :goto_5
    if-nez v6, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->J0:I

    if-ne v2, v4, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    if-ne v2, v3, :cond_7

    :goto_6
    return-void

    :pswitch_1
    const/16 v2, 0x4fc

    goto :goto_3

    :pswitch_2
    const/16 v2, 0xfc

    goto :goto_3

    :pswitch_3
    const/16 v2, 0xdc

    goto :goto_3

    :pswitch_4
    const/16 v2, 0xcc

    goto :goto_3

    :pswitch_5
    const/16 v2, 0x1c

    goto :goto_3

    :pswitch_6
    const/16 v2, 0xc

    goto :goto_3

    :pswitch_7
    const/4 v2, 0x4

    goto :goto_3

    :cond_6
    sget v2, Lcom/google/android/gms/internal/ads/uy;->j6:I

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/hz;->J0:I

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    if-eqz v8, :cond_a

    move v2, v4

    :goto_7
    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/TD;->DW(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    if-eqz v8, :cond_c

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    :cond_8
    const/16 v2, 0x5000

    :cond_9
    :goto_8
    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    if-eqz v8, :cond_e

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->aM:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_6

    :cond_a
    const/4 v2, 0x2

    goto :goto_7

    :cond_b
    const v2, 0xc000

    goto :goto_8

    :cond_c
    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    move/from16 v0, p3

    invoke-static {v0, v3, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    const/4 v2, -0x2

    if-eq v3, v2, :cond_d

    move v2, v5

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    shl-int/lit8 v4, v3, 0x2

    const-wide/32 v6, 0x3d090

    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide v6

    long-to-int v2, v6

    iget v5, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    mul-int/2addr v2, v5

    int-to-long v6, v3

    const-wide/32 v10, 0xb71b0

    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide v10

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v12, v3

    mul-long/2addr v10, v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    if-lt v4, v2, :cond_9

    if-le v4, v3, :cond_f

    move v2, v3

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v2

    goto :goto_9

    :cond_f
    move v2, v4

    goto :goto_8

    :cond_10
    move v3, v2

    goto/16 :goto_5

    :cond_11
    move v2, v3

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j6:Lcom/google/android/gms/internal/ads/Xy;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xy;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(Ljava/nio/ByteBuffer;J)Z
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/nz;->j6(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jz;->j6(Landroid/media/AudioTrack;Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J8()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->DW()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget v7, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-nez v7, :cond_5

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    goto :goto_1

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/mz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/mz;-><init>(IIII)V

    throw v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    throw v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->gn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/hz;->kQ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->aM:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v2

    sub-long/2addr v4, v6

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/nz;->j6(IJJ)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sz;->j6(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J0()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/Wy;->j6()I

    move-result v0

    goto :goto_4

    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Wy;->j6(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_4

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    new-instance v0, Lcom/google/android/gms/internal/ads/oz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/oz;-><init>(Lcom/google/android/gms/internal/ads/Ny;JJLcom/google/android/gms/internal/ads/iz;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->we()V

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-nez v0, :cond_14

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->KD:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->KD:J

    :goto_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->KD:J

    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    sub-long v2, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x30d40

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Discontinuity detected [expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AudioTrack"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    :cond_15
    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    sub-long v0, p2, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->sG:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nz;->j6()V

    goto :goto_5

    :cond_16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->SI:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->nw:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    goto :goto_8

    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->SI:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->SI:J

    goto/16 :goto_6

    :cond_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/hz;->j6(J)V

    goto :goto_7

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public final tp()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    :cond_0
    return-void
.end method

.method public final u7()Lcom/google/android/gms/internal/ads/Ny;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    return-object v0
.end method

.method public final v5()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->gn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
