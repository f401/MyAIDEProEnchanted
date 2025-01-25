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
            "Ljava/util/LinkedList<",
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
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->j6:Lcom/google/android/gms/internal/ads/Xy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    new-instance p3, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    sget p3, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_22

    :try_start_16
    const-class p3, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    invoke-virtual {p3, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception p3

    :cond_22
    :goto_22
    sget p3, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_30

    new-instance p1, Lcom/google/android/gms/internal/ads/kz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/kz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    goto :goto_37

    :cond_30
    new-instance p3, Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/jz;-><init>(Lcom/google/android/gms/internal/ads/iz;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    :goto_37
    new-instance p1, Lcom/google/android/gms/internal/ads/rz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/rz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->DW:Lcom/google/android/gms/internal/ads/rz;

    new-instance p3, Lcom/google/android/gms/internal/ads/yz;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/yz;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    array-length v1, p2

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    new-instance v3, Lcom/google/android/gms/internal/ads/wz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/wz;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object p1, v1, v0

    array-length p1, p2

    const/4 v0, 0x2

    invoke-static {p2, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    add-int/2addr p1, v0

    aput-object p3, v1, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    iput v4, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    sget-object p1, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    new-array p1, v4, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    return-void
.end method

.method private static DW(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_48

    goto :goto_34

    :sswitch_c
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x3

    goto :goto_35

    :sswitch_16
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :sswitch_20
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :sswitch_2a
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    if-eqz p0, :cond_45

    if-eq p0, v2, :cond_43

    if-eq p0, v4, :cond_41

    if-eq p0, v1, :cond_3e

    return v3

    :cond_3e
    const/16 p0, 0x8

    return p0

    :cond_41
    const/4 p0, 0x7

    return p0

    :cond_43
    const/4 p0, 0x6

    return p0

    :cond_45
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x41455b98 -> :sswitch_2a
        0xb269698 -> :sswitch_20
        0x59ae0c65 -> :sswitch_16
        0x59c2dc42 -> :sswitch_c
    .end sparse-switch
.end method

.method private final DW(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final DW(Ljava/nio/ByteBuffer;J)Z
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    goto :goto_3b

    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ge v0, v2, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ge v4, v2, :cond_76

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    iget p2, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_d6

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->x9:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_ed

    iget p3, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/hz;->Qq:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_ed

    :cond_76
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v2, :cond_e7

    const-wide v4, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_85

    const/4 v2, 0x1

    goto :goto_86

    :cond_85
    const/4 v2, 0x0

    :goto_86
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a4

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_a4
    iget v4, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    if-nez v4, :cond_c0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x3e8

    mul-long p2, p2, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    :cond_c0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_d8

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_d4

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    move p2, p3

    goto :goto_ed

    :cond_d4
    if-ge p3, p2, :cond_d8

    :cond_d6
    const/4 p2, 0x0

    goto :goto_ed

    :cond_d8
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e1

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    goto :goto_ed

    :cond_e1
    iget p1, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    goto :goto_ed

    :cond_e7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :cond_ed
    :goto_ed
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->kQ:J

    if-ltz p2, :cond_110

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-nez p1, :cond_ff

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    :cond_ff
    if-ne p2, v0, :cond_10f

    if-eqz p1, :cond_10b

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    :cond_10b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    return v1

    :cond_10f
    return v3

    :cond_110
    new-instance p1, Lcom/google/android/gms/internal/ads/qz;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/qz;-><init>(I)V

    throw p1
.end method

.method private final EQ()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final FH(J)J
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final J0()Z
    .registers 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    move-object v0, p0

    goto :goto_38

    :cond_14
    const/4 v4, 0x0

    move-object v0, p0

    :goto_16
    iget v5, v0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v7, v6

    const-wide v8, -0x7fffffffffffffffL  # -4.9E-324

    if-ge v5, v7, :cond_3a

    aget-object v5, v6, v5

    if-eqz v4, :cond_29

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->v5()V

    :cond_29
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/hz;->j6(J)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->Hw()Z

    move-result v4

    if-nez v4, :cond_33

    return v2

    :cond_33
    iget v4, v0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    :goto_38
    const/4 v4, 0x1

    goto :goto_16

    :cond_3a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_46

    invoke-direct {v0, v4, v8, v9}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_46

    return v2

    :cond_46
    iput v3, v0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    return v1
.end method

.method private final J8()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1b
    return-void
.end method

.method private final QX()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->gW:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->yS:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->er:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->BT:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->P8:J

    return-void
.end method

.method private final Ws()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final XL()Z
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hz;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private final j6(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_3e

    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    goto :goto_34

    :cond_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Yy;->j6(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method private final we()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->Zo()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_18
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/Yy;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Yy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    :goto_30
    if-ge v3, v1, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->ef:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_17
    return-void
.end method

.method public final DW(I)V
    .registers 5

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-eq v0, p1, :cond_1c

    :cond_15
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    :cond_1c
    return-void
.end method

.method public final FH()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    return-void
.end method

.method public final Hw()V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->SI:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->KD:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->cn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->sh:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->cb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_33

    :cond_1d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->a8:J

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->ca:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hz;->g3:[Lcom/google/android/gms/internal/ads/Yy;

    array-length v6, v5

    if-ge v3, v6, :cond_56

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->flush()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/hz;->Mz:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Yy;->DW()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_56
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/hz;->sy:I

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->lg:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/jz;->j6(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/hz;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8a
    return-void
.end method

.method public final VH()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_20

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J0()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jz;->j6(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->rN:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    :cond_20
    :goto_20
    return-void
.end method

.method public final Zo()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->dx:I

    :cond_8
    return-void
.end method

.method public final gn()Z
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_32

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_33

    :cond_32
    return v0

    :cond_33
    return v1
.end method

.method public final j6(Z)J
    .registers 21

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    iget v0, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_16

    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    :cond_16
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v0, v4, :cond_13d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->FH()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_13d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v5

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/hz;->BT:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v0, v13, v15

    if-ltz v0, :cond_6a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->er:I

    sub-long v13, v7, v11

    aput-wide v13, v0, v4

    add-int/2addr v4, v2

    const/16 v0, 0xa

    rem-int/2addr v4, v0

    iput v4, v1, Lcom/google/android/gms/internal/ads/hz;->er:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->yS:I

    if-ge v4, v0, :cond_51

    add-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/hz;->yS:I

    :cond_51
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/hz;->BT:J

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/hz;->gW:J

    const/4 v0, 0x0

    :goto_56
    iget v2, v1, Lcom/google/android/gms/internal/ads/hz;->yS:I

    if-ge v0, v2, :cond_6a

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/hz;->gW:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->VH:[J

    aget-wide v15, v4, v0

    int-to-long v9, v2

    div-long/2addr v15, v9

    add-long/2addr v13, v15

    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/hz;->gW:J

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v9, 0x0

    goto :goto_56

    :cond_6a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v0

    if-nez v0, :cond_13d

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/hz;->P8:J

    sub-long v9, v11, v9

    const-wide/32 v13, 0x7a120

    cmp-long v0, v9, v13

    if-ltz v0, :cond_13d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->Hw()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    const-string v2, "AudioTrack"

    if-eqz v0, :cond_ef

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->v5()J

    move-result-wide v13

    div-long/2addr v13, v5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->Zo()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/hz;->ef:J

    cmp-long v0, v13, v9

    if-gez v0, :cond_9d

    :goto_9a
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    goto :goto_ef

    :cond_9d
    sub-long v9, v13, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v0, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_d5

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x88

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    :goto_b5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_d5
    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_ef

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x8a

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    goto :goto_b5

    :cond_ef
    :goto_ef
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13b

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-nez v3, :cond_13b

    const/4 v3, 0x0

    :try_start_f8
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->aM:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v0, v4, v6

    if-lez v0, :cond_13b

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->Sf:J
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_137} :catch_138

    goto :goto_13b

    :catch_138
    move-exception v0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/hz;->ei:Ljava/lang/reflect/Method;

    :cond_13b
    :goto_13b
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/hz;->P8:J

    :cond_13d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/hz;->vy:Z

    if-eqz v0, :cond_160

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->v5()J

    move-result-wide v6

    div-long/2addr v6, v4

    sub-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide v2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->Zo()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v2

    goto :goto_173

    :cond_160
    iget v0, v1, Lcom/google/android/gms/internal/ads/hz;->yS:I

    if-nez v0, :cond_16b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->FH()J

    move-result-wide v2

    goto :goto_16e

    :cond_16b
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->gW:J

    add-long/2addr v2, v4

    :goto_16e
    if-nez p1, :cond_173

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->Sf:J

    sub-long/2addr v2, v4

    :cond_173
    :goto_173
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    :goto_175
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ab

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->DW(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1ab

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->DW(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->a8:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oz;->FH(Lcom/google/android/gms/internal/ads/oz;)J

    move-result-wide v6

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    sub-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->U2:J

    goto :goto_175

    :cond_1ab
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1bc

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->U2:J

    add-long/2addr v2, v6

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long/2addr v2, v6

    goto :goto_202

    :cond_1bc
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yz;->gn()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1e7

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long v10, v2, v8

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yz;->VH()J

    move-result-wide v12

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yz;->gn()J

    move-result-wide v14

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    goto :goto_201

    :cond_1e7
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/hz;->U2:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    float-to-double v8, v0

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/hz;->a8:J

    sub-long/2addr v2, v10

    long-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    double-to-long v2, v8

    :goto_201
    add-long/2addr v2, v6

    :goto_202
    add-long/2addr v4, v2

    return-wide v4
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_9

    sget-object p1, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    return-object p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/Ny;->DW:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yz;->j6(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->FH:Lcom/google/android/gms/internal/ads/yz;

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ny;->FH:F

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/yz;->DW(F)F

    new-instance v1, Lcom/google/android/gms/internal/ads/Ny;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/Ny;-><init>(FF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    if-eqz p1, :cond_22

    goto :goto_39

    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/oz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oz;->j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object p1

    goto :goto_39

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    :goto_39
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result p1

    if-eqz p1, :cond_48

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_4a

    :cond_48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    return-object p1
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz;->j6()V

    :cond_11
    return-void
.end method

.method public final j6(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->vJ:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->J8()V

    :cond_b
    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    return-void
.end method

.method public final j6(Ljava/lang/String;IIII[I)V
    .registers 14

    const-string p5, "audio/raw"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    if-eqz p5, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/lang/String;)I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, p4

    :goto_10
    const/4 v1, 0x0

    if-nez p5, :cond_4a

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/TD;->DW(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/hz;->nw:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/hz;->DW:Lcom/google/android/gms/internal/ads/rz;

    invoke-virtual {p4, p6}, Lcom/google/android/gms/internal/ads/rz;->j6([I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/hz;->Hw:[Lcom/google/android/gms/internal/ads/Yy;

    array-length p6, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    if-ge v2, p6, :cond_44

    aget-object v4, p4, v2

    :try_start_27
    invoke-interface {v4, p3, p2, p1}, Lcom/google/android/gms/internal/ads/Yy;->j6(III)Z

    move-result v5
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/Zy; {:try_start_27 .. :try_end_2b} :catch_3d

    or-int/2addr v3, v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->Zo()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->j6()I

    move-result p2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Yy;->FH()I

    move-result p1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :catch_3d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/lz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/lz;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_44
    if-eqz v3, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->we()V

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :cond_4b
    :goto_4b
    const/16 p4, 0xc

    const/16 p6, 0xfc

    packed-switch p2, :pswitch_data_14c

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x26

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/lz;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/lz;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_6b  #0x8
    sget v2, Lcom/google/android/gms/internal/ads/uy;->j6:I

    goto :goto_81

    :pswitch_6e  #0x7
    const/16 v2, 0x4fc

    goto :goto_81

    :pswitch_71  #0x6
    const/16 v2, 0xfc

    goto :goto_81

    :pswitch_74  #0x5
    const/16 v2, 0xdc

    goto :goto_81

    :pswitch_77  #0x4
    const/16 v2, 0xcc

    goto :goto_81

    :pswitch_7a  #0x3
    const/16 v2, 0x1c

    goto :goto_81

    :pswitch_7d  #0x2
    const/16 v2, 0xc

    goto :goto_81

    :pswitch_80  #0x1
    const/4 v2, 0x4

    :goto_81
    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v5, 0x17

    const/4 v6, 0x5

    if-gt v4, v5, :cond_a8

    const-string v4, "foster"

    sget-object v5, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const-string v4, "NVIDIA"

    sget-object v5, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const/4 v4, 0x3

    if-eq p2, v4, :cond_a9

    if-eq p2, v6, :cond_a9

    const/4 p6, 0x7

    if-eq p2, p6, :cond_a5

    goto :goto_a8

    :cond_a5
    sget p6, Lcom/google/android/gms/internal/ads/uy;->j6:I

    goto :goto_a9

    :cond_a8
    :goto_a8
    move p6, v2

    :cond_a9
    :goto_a9
    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v4, 0x19

    if-gt v2, v4, :cond_be

    const-string v2, "fugu"

    sget-object v4, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    if-eqz p5, :cond_be

    if-ne p2, v0, :cond_be

    goto :goto_bf

    :cond_be
    move p4, p6

    :goto_bf
    if-nez v3, :cond_d4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result p6

    if-eqz p6, :cond_d4

    iget p6, p0, Lcom/google/android/gms/internal/ads/hz;->J0:I

    if-ne p6, p1, :cond_d4

    iget p6, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    if-ne p6, p3, :cond_d4

    iget p6, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    if-ne p6, p4, :cond_d4

    return-void

    :cond_d4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->J0:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/hz;->we:I

    const/4 p6, 0x2

    if-eqz p5, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 p1, 0x2

    :goto_e4
    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    invoke-static {p6, p2}, Lcom/google/android/gms/internal/ads/TD;->DW(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/hz;->J8:I

    if-eqz p5, :cond_fd

    if-eq p1, v6, :cond_fa

    const/4 p2, 0x6

    if-ne p1, p2, :cond_f6

    goto :goto_fa

    :cond_f6
    const p1, 0xc000

    goto :goto_131

    :cond_fa
    :goto_fa
    const/16 p1, 0x5000

    goto :goto_131

    :cond_fd
    invoke-static {p3, p4, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_105

    goto :goto_106

    :cond_105
    const/4 v0, 0x0

    :goto_106
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    shl-int/lit8 p2, p1, 0x2

    const-wide/32 p3, 0x3d090

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    mul-int p3, p3, p4

    int-to-long v0, p1

    const-wide/32 v2, 0xb71b0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/hz;->FH(J)J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    if-ge p2, p3, :cond_12d

    move p1, p3

    goto :goto_131

    :cond_12d
    if-le p2, p1, :cond_130

    goto :goto_131

    :cond_130
    move p1, p2

    :goto_131
    iput p1, p0, Lcom/google/android/gms/internal/ads/hz;->XL:I

    if-eqz p5, :cond_13b

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_143

    :cond_13b
    iget p2, p0, Lcom/google/android/gms/internal/ads/hz;->ro:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide p1

    :goto_143
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/hz;->aM:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    return-void

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_7d  #00000002
        :pswitch_7a  #00000003
        :pswitch_77  #00000004
        :pswitch_74  #00000005
        :pswitch_71  #00000006
        :pswitch_6e  #00000007
        :pswitch_6b  #00000008
    .end packed-switch
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->j6:Lcom/google/android/gms/internal/ads/Xy;

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Xy;->j6(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final j6(Ljava/nio/ByteBuffer;J)Z
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_11

    if-ne v0, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->EQ()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_ea

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->Zo:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v4, :cond_68

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/hz;->XL:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/hz;->OW:I

    new-instance v14, Landroid/media/AudioTrack;

    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v12

    const/4 v4, 0x1

    move-object v10, v14

    move-object v8, v14

    move v14, v4

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    :goto_65
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    goto :goto_a0

    :cond_68
    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-nez v4, :cond_80

    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/hz;->XL:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    goto :goto_a0

    :cond_80
    new-instance v8, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/hz;->Ws:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/hz;->J8:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/hz;->XL:I

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    goto :goto_65

    :goto_a0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_d1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iget v8, v1, Lcom/google/android/gms/internal/ads/hz;->OW:I

    if-eq v8, v4, :cond_b9

    iput v4, v1, Lcom/google/android/gms/internal/ads/hz;->OW:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/nz;->j6(I)V

    :cond_b9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/jz;->j6(Landroid/media/AudioTrack;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->J8()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->lp:Z

    if-eqz v4, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->DW()V

    goto :goto_ea

    :cond_d1
    :try_start_d1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d6} :catch_db
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_d7

    goto :goto_dc

    :catchall_d7
    move-exception v0

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    throw v0

    :catch_db
    move-exception v0

    :goto_dc
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    new-instance v0, Lcom/google/android/gms/internal/ads/mz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/hz;->EQ:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/hz;->we:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/hz;->XL:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/mz;-><init>(IIII)V

    throw v0

    :cond_ea
    :goto_ea
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->XL()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_111

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_fe

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    return v5

    :cond_fe
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_111

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->gn:Lcom/google/android/gms/internal/ads/jz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_111

    return v5

    :cond_111
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->gn()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/hz;->XX:Z

    if-eqz v4, :cond_13c

    if-nez v11, :cond_13c

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->tp:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_13c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/hz;->kQ:J

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->XL:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->aM:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v17

    sub-long v19, v11, v13

    move/from16 v16, v4

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/nz;->j6(IJJ)V

    :cond_13c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_23c

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_147

    return v6

    :cond_147
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v4, :cond_188

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->cb:I

    if-nez v4, :cond_188

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->J8:I

    const/4 v7, 0x7

    if-eq v4, v7, :cond_182

    const/16 v7, 0x8

    if-ne v4, v7, :cond_159

    goto :goto_182

    :cond_159
    const/4 v7, 0x5

    if-ne v4, v7, :cond_161

    invoke-static {}, Lcom/google/android/gms/internal/ads/Wy;->j6()I

    move-result v4

    goto :goto_186

    :cond_161
    const/4 v7, 0x6

    if-ne v4, v7, :cond_169

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Wy;->j6(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_186

    :cond_169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_182
    :goto_182
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/sz;->j6(Ljava/nio/ByteBuffer;)I

    move-result v4

    :goto_186
    iput v4, v1, Lcom/google/android/gms/internal/ads/hz;->cb:I

    :cond_188
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    if-eqz v4, :cond_1b6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->J0()Z

    move-result v4

    if-nez v4, :cond_193

    return v5

    :cond_193
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->u7:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/gms/internal/ads/oz;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->Ws()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/oz;-><init>(Lcom/google/android/gms/internal/ads/Ny;JJLcom/google/android/gms/internal/ads/iz;)V

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->j3:Lcom/google/android/gms/internal/ads/Ny;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/hz;->we()V

    :cond_1b6
    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-nez v4, :cond_1c5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    goto :goto_223

    :cond_1c5
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v4, :cond_1ce

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/hz;->KD:J

    goto :goto_1d4

    :cond_1ce
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/hz;->SI:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->nw:I

    int-to-long v13, v4

    div-long/2addr v11, v13

    :goto_1d4
    invoke-direct {v1, v11, v12}, Lcom/google/android/gms/internal/ads/hz;->DW(J)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-ne v4, v6, :cond_211

    sub-long v11, v7, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x30d40

    cmp-long v4, v11, v13

    if-lez v4, :cond_211

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x50

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Discontinuity detected [expected "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", got "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "AudioTrack"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    :cond_211
    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    if-ne v4, v10, :cond_223

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    sub-long v7, v2, v7

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/hz;->sG:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/hz;->dx:I

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hz;->v5:Lcom/google/android/gms/internal/ads/nz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/nz;->j6()V

    :cond_223
    :goto_223
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v4, :cond_230

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->KD:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/hz;->cb:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->KD:J

    goto :goto_23a

    :cond_230
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->SI:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/hz;->SI:J

    :goto_23a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    :cond_23c
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/hz;->QX:Z

    if-eqz v0, :cond_246

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/hz;->DW(Ljava/nio/ByteBuffer;J)Z

    goto :goto_249

    :cond_246
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hz;->j6(J)V

    :goto_249
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_255

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/hz;->I:Ljava/nio/ByteBuffer;

    return v6

    :cond_255
    return v5
.end method

.method public final tp()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->br:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/hz;->OW:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    :cond_c
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

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hz;->aj:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hz;->gn()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method
