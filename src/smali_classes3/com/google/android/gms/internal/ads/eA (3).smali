.class public final Lcom/google/android/gms/internal/ads/eA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oz;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:Ljava/util/UUID;

.field private static final j6:Lcom/google/android/gms/internal/ads/Sz;


# instance fields
.field private BT:Z

.field private final EQ:Lcom/google/android/gms/internal/ads/LD;

.field private I:Z

.field private final J0:Lcom/google/android/gms/internal/ads/LD;

.field private final J8:Lcom/google/android/gms/internal/ads/LD;

.field private KD:Z

.field private Mr:J

.field private Mz:Z

.field private OW:Z

.field private P8:J

.field private final QX:Lcom/google/android/gms/internal/ads/LD;

.field private Qq:B

.field private SI:Lcom/google/android/gms/internal/ads/FD;

.field private Sf:I

.field private U2:J

.field private final VH:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/hA;",
            ">;"
        }
    .end annotation
.end field

.field private final Ws:Lcom/google/android/gms/internal/ads/LD;

.field private final XL:Lcom/google/android/gms/internal/ads/LD;

.field private XX:Lcom/google/android/gms/internal/ads/Rz;

.field private final Zo:Lcom/google/android/gms/internal/ads/jA;

.field private a8:J

.field private aM:Ljava/nio/ByteBuffer;

.field private aj:I

.field private br:Z

.field private ca:Z

.field private cb:I

.field private cn:J

.field private dx:I

.field private ef:I

.field private ei:J

.field private er:Z

.field private g3:I

.field private gW:J

.field private final gn:Z

.field private j3:J

.field private lg:J

.field private lp:I

.field private nw:Lcom/google/android/gms/internal/ads/FD;

.field private rN:Lcom/google/android/gms/internal/ads/hA;

.field private ro:I

.field private sG:[I

.field private sh:J

.field private sy:I

.field private final tp:Lcom/google/android/gms/internal/ads/LD;

.field private final u7:Lcom/google/android/gms/internal/ads/LD;

.field private final v5:Lcom/google/android/gms/internal/ads/cA;

.field private vJ:I

.field private vy:J

.field private final we:Lcom/google/android/gms/internal/ads/LD;

.field private x9:Z

.field private yS:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/fA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->j6:Lcom/google/android/gms/internal/ads/Sz;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->FH:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL  # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->Hw:Ljava/util/UUID;

    return-void

    nop

    :array_2c
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_40
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eA;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/_z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/_z;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/eA;-><init>(Lcom/google/android/gms/internal/ads/cA;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/cA;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    new-instance v0, Lcom/google/android/gms/internal/ads/gA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/gA;-><init>(Lcom/google/android/gms/internal/ads/eA;Lcom/google/android/gms/internal/ads/fA;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/cA;->j6(Lcom/google/android/gms/internal/ads/dA;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_28

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->gn:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/jA;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jA;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    sget-object v0, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    return-void
.end method

.method static synthetic DW()Ljava/util/UUID;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/eA;->Hw:Ljava/util/UUID;

    return-object v0
.end method

.method static DW(I)Z
    .registers 2

    const v0, 0x1549a966

    if-eq p0, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private final FH()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->I:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->x9:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/eA;->Qq:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->ca:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    return-void
.end method

.method static j6(I)I
    .registers 1

    sparse-switch p0, :sswitch_data_10

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x5

    return p0

    :sswitch_7
    const/4 p0, 0x4

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7672 -> :sswitch_7
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v0

    if-lez v0, :cond_12

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result p1

    :goto_17
    iget p2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    return p1
.end method

.method private final j6(J)J
    .registers 9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->j6()I

    move-result v0

    if-ge v0, p2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V
    .registers 13

    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    sget-object p2, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->j6()I

    move-result v2

    if-ge v2, v0, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    array-length p2, p2

    invoke-interface {p1, v2, p2, p3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    return-void

    :cond_34
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eA;->Mz:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_176

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v2, :cond_16a

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const v5, -0x40000001  # -1.9999999f

    and-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eA;->I:Z

    const/16 v5, 0x80

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v2, v2, v1

    and-int/lit16 v6, v2, 0x80

    if-eq v6, v5, :cond_69

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/eA;->Qq:B

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->I:Z

    goto :goto_71

    :cond_69
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    :goto_71
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/eA;->Qq:B

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_174

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7c

    const/4 v2, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const/high16 v7, 0x40000000  # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/eA;->ca:Z

    if-nez v6, :cond_c2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v7, 0x8

    invoke-interface {p1, v6, v1, v7}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->ca:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    if-eqz v2, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v5, 0x0

    :goto_a0
    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_c2
    if-eqz v2, :cond_174

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eA;->x9:Z

    if-nez v2, :cond_e3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->x9:Z

    :cond_e3
    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    shl-int/2addr v2, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v5, v1, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    div-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-short v2, v2

    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_109

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_10f

    :cond_109
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    :cond_10f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_11b
    iget v7, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    if-ge v2, v7, :cond_13d

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v7

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_132

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    int-to-short v6, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_139

    :cond_132
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_139
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_11b

    :cond_13d
    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    rem-int/2addr v7, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    if-ne v7, v4, :cond_14b

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_154

    :cond_14b
    int-to-short v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_154
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    goto :goto_174

    :cond_16a
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    if-eqz v2, :cond_174

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    array-length v6, v2

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    :cond_174
    :goto_174
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->Mz:Z

    :cond_176
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    add-int/2addr p3, v2

    const-string v2, "V_MPEG4/ISO/AVC"

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-nez v2, :cond_19d

    const-string v2, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    goto :goto_19d

    :cond_193
    :goto_193
    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    if-ge v2, p3, :cond_1f5

    sub-int v2, p3, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I

    goto :goto_193

    :cond_19d
    :goto_19d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aput-byte v1, v2, v1

    aput-byte v1, v2, v4

    aput-byte v1, v2, v3

    iget v3, p2, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    rsub-int/lit8 v4, v3, 0x4

    :goto_1ab
    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    if-ge v6, p3, :cond_1f5

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    if-nez v6, :cond_1ed

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v3, v6

    invoke-interface {p1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    if-lez v6, :cond_1cb

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v7, v2, v4, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    :cond_1cb
    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    goto :goto_1ab

    :cond_1ed
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    goto :goto_1ab

    :cond_1f5
    const-string p1, "A_VORBIS"

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_20e
    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/hA;J)V
    .registers 15

    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    const-wide v4, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_1e

    sget-object v2, Lcom/google/android/gms/internal/ads/eA;->FH:[B

    goto :goto_71

    :cond_1e
    const-wide v4, 0xd693a400L

    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    div-long v9, v2, v9

    long-to-int v4, v9

    const v7, 0xf4240

    mul-int v7, v7, v4

    int-to-long v9, v7

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    long-to-int v3, v2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "%02d:%02d:%02d,%03d"

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/TD;->FH(Ljava/lang/String;)[B

    move-result-object v2

    :goto_71
    const/16 v3, 0x13

    const/16 v4, 0xc

    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_8e
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eA;->FH()V

    return-void
.end method

.method private static j6([II)[I
    .registers 3

    if-nez p0, :cond_5

    new-array p0, p1, [I

    return-object p0

    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    :cond_9
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method final FH(I)V
    .registers 15

    const/16 v0, 0xa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_246

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_149

    const/16 v0, 0x4dbb

    const v4, 0x1c53bb6b

    const-wide/16 v5, -0x1

    if-eq p1, v0, :cond_131

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_108

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_f5

    const v0, 0x1549a966

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    if-eq p1, v0, :cond_dd

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_c7

    if-eq p1, v4, :cond_2f

    goto/16 :goto_140

    :cond_2f
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-nez p1, :cond_140

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    cmp-long v0, v9, v5

    if-eqz v0, :cond_b6

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v4

    if-eq v0, v4, :cond_5c

    goto :goto_b6

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v0

    new-array v4, v0, [I

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [J

    const/4 v8, 0x0

    :goto_6b
    if-ge v8, v0, :cond_83

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/FD;->j6(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/FD;->j6(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    :cond_83
    :goto_83
    add-int/lit8 v8, v0, -0x1

    if-ge v2, v8, :cond_9a

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, v5, v8

    aget-wide v11, v5, v2

    sub-long/2addr v9, v11

    long-to-int v10, v9

    aput v10, v4, v2

    aget-wide v9, v7, v8

    aget-wide v11, v7, v2

    sub-long/2addr v9, v11

    aput-wide v9, v6, v2

    move v2, v8

    goto :goto_83

    :cond_9a
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/eA;->j3:J

    add-long/2addr v9, v11

    aget-wide v11, v5, v8

    sub-long/2addr v9, v11

    long-to-int v0, v9

    aput v0, v4, v8

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    aget-wide v11, v7, v8

    sub-long/2addr v9, v11

    aput-wide v9, v6, v8

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    new-instance v0, Lcom/google/android/gms/internal/ads/Lz;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Lz;-><init>([I[J[J[J)V

    goto :goto_c1

    :cond_b6
    :goto_b6
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    new-instance v0, Lcom/google/android/gms/internal/ads/Xz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    :goto_c1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    return-void

    :cond_c7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    goto :goto_140

    :cond_d5
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dd
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_e8

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    :cond_e8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_140

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    return-void

    :cond_f5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v0, :cond_140

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    if-nez p1, :cond_100

    goto :goto_140

    :cond_100
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_108
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v0, :cond_140

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    if-eqz v0, :cond_129

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhp;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhp$zza;

    sget-object v5, Lcom/google/android/gms/internal/ads/uy;->DW:Ljava/util/UUID;

    const-string v6, "video/webm"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v1, v2

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>([Lcom/google/android/gms/internal/ads/zzhp$zza;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    return-void

    :cond_129
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_131
    iget p1, p0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_141

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_141

    if-ne p1, v4, :cond_140

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    :cond_140
    :goto_140
    return-void

    :cond_141
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_149
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    const-string v0, "V_VP8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_VP9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEG2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "V_THEORA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_AAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_MPEG/L2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_AC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_EAC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_TRUEHD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_DTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_FLAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_MS/ACM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "S_VOBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    const-string v0, "S_DVBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22e

    goto :goto_22f

    :cond_22e
    const/4 v1, 0x0

    :cond_22f
    :goto_22f
    if-eqz v1, :cond_243

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/hA;->DW:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/Rz;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget v1, v0, Lcom/google/android/gms/internal/ads/hA;->DW:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_243
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    return-void

    :cond_246
    iget p1, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24c

    return-void

    :cond_24c
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    if-nez p1, :cond_255

    iget p1, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    :cond_255
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hA;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/hA;J)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_3a

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    if-nez v3, :cond_3a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/cA;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    if-eqz v5, :cond_24

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    goto :goto_34

    :cond_24
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-eqz v3, :cond_36

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_36

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    :goto_34
    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_5

    return v1

    :cond_3a
    if-eqz v2, :cond_3d

    return v0

    :cond_3d
    const/4 p1, -0x1

    return p1
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method final j6(ID)V
    .registers 5

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_48

    packed-switch p1, :pswitch_data_52

    goto :goto_47

    :pswitch_c  #0x55da
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->nw:F

    goto :goto_47

    :pswitch_12  #0x55d9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->ei:F

    return-void

    :pswitch_18  #0x55d8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->P8:F

    return-void

    :pswitch_1e  #0x55d7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->vy:F

    return-void

    :pswitch_24  #0x55d6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->BT:F

    return-void

    :pswitch_2a  #0x55d5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->gW:F

    return-void

    :pswitch_30  #0x55d4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->yS:F

    return-void

    :pswitch_36  #0x55d3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->er:F

    return-void

    :pswitch_3c  #0x55d2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->rN:F

    return-void

    :pswitch_42  #0x55d1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->lg:F

    :goto_47
    return-void

    :cond_48
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    return-void

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/hA;->ro:I

    return-void

    :pswitch_data_52
    .packed-switch 0x55d1
        :pswitch_42  #000055d1
        :pswitch_3c  #000055d2
        :pswitch_36  #000055d3
        :pswitch_30  #000055d4
        :pswitch_2a  #000055d5
        :pswitch_24  #000055d6
        :pswitch_1e  #000055d7
        :pswitch_18  #000055d8
        :pswitch_12  #000055d9
        :pswitch_c  #000055da
    .end packed-switch
.end method

.method final j6(IILcom/google/android/gms/internal/ads/Qz;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v4, :cond_91

    if-eq v1, v5, :cond_91

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_85

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_76

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_57

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_4b

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_32

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    return-void

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    return-void

    :cond_57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    rsub-int/lit8 v4, v2, 0x4

    invoke-interface {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    return-void

    :cond_76
    new-array v1, v2, [B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-instance v3, Lcom/google/android/gms/internal/ads/Zz;

    invoke-direct {v3, v7, v1}, Lcom/google/android/gms/internal/ads/Zz;-><init>(I[B)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    return-void

    :cond_85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    return-void

    :cond_91
    iget v4, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/16 v8, 0x8

    if-nez v4, :cond_b6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v4, v3, v6, v7, v8}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jA;->DW()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    const-wide v9, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    :cond_b6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget v9, v0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/hA;

    if-nez v4, :cond_cc

    iget v1, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    return-void

    :cond_cc
    iget v9, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    if-ne v9, v7, :cond_269

    const/4 v9, 0x3

    invoke-direct {v0, v3, v9}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v7

    const/16 v12, 0xff

    if-nez v10, :cond_f4

    iput v7, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/eA;->j6([II)[I

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    iget v13, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v9

    aput v2, v10, v6

    goto/16 :goto_1fa

    :cond_f4
    if-ne v1, v5, :cond_261

    const/4 v13, 0x4

    invoke-direct {v0, v3, v13}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v14, v14, v9

    and-int/2addr v14, v12

    add-int/2addr v14, v7

    iput v14, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/eA;->j6([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    if-ne v10, v11, :cond_11a

    iget v9, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v13

    div-int/2addr v2, v10

    invoke-static {v14, v6, v10, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1fa

    :cond_11a
    if-ne v10, v7, :cond_14e

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_11e
    iget v14, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    sub-int/2addr v14, v7

    if-ge v9, v14, :cond_143

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aput v6, v14, v9

    :cond_127
    add-int/2addr v13, v7

    invoke-direct {v0, v3, v13}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v16, v15, v9

    add-int v16, v16, v14

    aput v16, v15, v9

    if-eq v14, v12, :cond_127

    add-int v10, v10, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_11e

    :cond_143
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v9, v14

    goto/16 :goto_1fa

    :cond_14e
    if-ne v10, v9, :cond_248

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_152
    iget v14, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    sub-int/2addr v14, v7

    if-ge v9, v14, :cond_1f1

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aput v6, v14, v9

    add-int/lit8 v13, v13, 0x1

    invoke-direct {v0, v3, v13}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_1e9

    const/4 v14, 0x0

    :goto_16b
    if-ge v14, v8, :cond_1b8

    rsub-int/lit8 v16, v14, 0x7

    shl-int v16, v7, v16

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v16

    if-eqz v5, :cond_1ae

    add-int/2addr v13, v14

    invoke-direct {v0, v3, v13}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v5, v5, v15

    and-int/2addr v5, v12

    xor-int/lit8 v16, v16, -0x1

    and-int v5, v5, v16

    int-to-long v6, v5

    add-int/lit8 v15, v15, 0x1

    :goto_18d
    if-ge v15, v13, :cond_1a1

    shl-long v5, v6, v8

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v7, v7, v15

    and-int/2addr v7, v12

    int-to-long v11, v7

    or-long/2addr v5, v11

    add-int/lit8 v15, v15, 0x1

    move-wide v6, v5

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_18d

    :cond_1a1
    if-lez v9, :cond_1ba

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v11, 0x1

    shl-long v14, v11, v14

    sub-long/2addr v14, v11

    sub-long/2addr v6, v14

    goto :goto_1ba

    :cond_1ae
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_16b

    :cond_1b8
    const-wide/16 v6, 0x0

    :cond_1ba
    :goto_1ba
    const-wide/32 v11, -0x80000000

    cmp-long v5, v6, v11

    if-ltz v5, :cond_1e1

    const-wide/32 v11, 0x7fffffff

    cmp-long v5, v6, v11

    if-gtz v5, :cond_1e1

    long-to-int v5, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    if-nez v9, :cond_1ce

    goto :goto_1d3

    :cond_1ce
    add-int/lit8 v7, v9, -0x1

    aget v7, v6, v7

    add-int/2addr v5, v7

    :goto_1d3
    aput v5, v6, v9

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto/16 :goto_152

    :cond_1e1
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e9
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    iget v6, v0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v5, v14

    :goto_1fa
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v5, 0x0

    aget-byte v6, v2, v5

    const/4 v5, 0x1

    aget-byte v2, v2, v5

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    const/16 v5, 0xff

    and-int/2addr v2, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v2, v5

    int-to-long v5, v2

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v5

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_220

    const/4 v2, 0x1

    goto :goto_221

    :cond_220
    const/4 v2, 0x0

    :goto_221
    iget v6, v4, Lcom/google/android/gms/internal/ads/hA;->FH:I

    if-eq v6, v5, :cond_237

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_235

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_235

    goto :goto_237

    :cond_235
    const/4 v5, 0x0

    goto :goto_238

    :cond_237
    :goto_237
    const/4 v5, 0x1

    :goto_238
    if-eqz v2, :cond_23d

    const/high16 v2, -0x80000000

    goto :goto_23e

    :cond_23d
    const/4 v2, 0x0

    :goto_23e
    or-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    goto :goto_269

    :cond_248
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_261
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_269
    :goto_269
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_294

    :goto_26d
    iget v1, v0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    if-ge v1, v2, :cond_290

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/hA;->Hw:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/hA;J)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    goto :goto_26d

    :cond_290
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    return-void

    :cond_294
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V

    return-void
.end method

.method final j6(IJ)V
    .registers 12

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_1f4

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_1d5

    const/16 v0, 0x32

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_216

    const/4 v0, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_284

    goto/16 :goto_1fa

    :sswitch_1e
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    return-void

    :sswitch_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->Hw:I

    return-void

    :sswitch_27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->KD:I

    return-void

    :sswitch_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/hA;->sh:J

    return-void

    :sswitch_32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/hA;->cn:J

    return-void

    :sswitch_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    cmp-long v0, p2, v3

    if-nez v0, :cond_3e

    const/4 v5, 0x1

    :cond_3e
    iput-boolean v5, p1, Lcom/google/android/gms/internal/ads/hA;->dx:Z

    return-void

    :sswitch_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->J0:I

    return-void

    :sswitch_47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->J8:I

    return-void

    :sswitch_4d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->we:I

    return-void

    :sswitch_53
    long-to-int p1, p2

    if-eqz p1, :cond_6e

    if-eq p1, v7, :cond_69

    if-eq p1, v1, :cond_64

    const/16 p2, 0xf

    if-eq p1, p2, :cond_5f

    return-void

    :cond_5f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v1, p1, Lcom/google/android/gms/internal/ads/hA;->QX:I

    return-void

    :cond_64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v7, p1, Lcom/google/android/gms/internal/ads/hA;->QX:I

    return-void

    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v6, p1, Lcom/google/android/gms/internal/ads/hA;->QX:I

    return-void

    :cond_6e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v5, p1, Lcom/google/android/gms/internal/ads/hA;->QX:I

    return-void

    :sswitch_73
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    return-void

    :sswitch_79
    cmp-long p1, p2, v3

    if-nez p1, :cond_7f

    goto/16 :goto_1fa

    :cond_7f
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x38

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_9b
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_a3

    goto/16 :goto_1fa

    :cond_a3
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x31

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_bf
    cmp-long p1, p2, v3

    if-nez p1, :cond_c5

    goto/16 :goto_1fa

    :cond_c5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_df
    cmp-long p1, p2, v3

    if-ltz p1, :cond_eb

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_eb

    goto/16 :goto_1fa

    :cond_eb
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x35

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_107
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_10f

    goto/16 :goto_1fa

    :cond_10f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_129
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    return-void

    :sswitch_12c
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    if-nez p1, :cond_1fa

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/FD;->j6(J)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    return-void

    :sswitch_138
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    return-void

    :sswitch_13f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->DW:I

    return-void

    :sswitch_145
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    return-void

    :sswitch_14b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/FD;->j6(J)V

    return-void

    :sswitch_155
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->tp:I

    return-void

    :sswitch_15b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->SI:I

    return-void

    :sswitch_161
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    return-void

    :sswitch_168
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    cmp-long v0, p2, v3

    if-nez v0, :cond_16f

    const/4 v5, 0x1

    :cond_16f
    iput-boolean v5, p1, Lcom/google/android/gms/internal/ads/hA;->cb:Z

    return-void

    :sswitch_172
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->FH:I

    return-void

    :pswitch_178  #0x55bd
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->a8:I

    goto/16 :goto_1fa

    :pswitch_17f  #0x55bc
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/hA;->U2:I

    return-void

    :pswitch_185  #0x55bb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_1a3

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1a0

    const/4 p1, 0x4

    if-eq p3, p1, :cond_19b

    const/4 p1, 0x5

    if-eq p3, p1, :cond_19b

    if-eq p3, v2, :cond_19b

    if-eq p3, v0, :cond_19b

    return-void

    :cond_19b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v6, p1, Lcom/google/android/gms/internal/ads/hA;->aM:I

    return-void

    :cond_1a0
    iput v2, p1, Lcom/google/android/gms/internal/ads/hA;->aM:I

    return-void

    :cond_1a3
    iput v7, p1, Lcom/google/android/gms/internal/ads/hA;->aM:I

    return-void

    :pswitch_1a6  #0x55ba
    long-to-int p1, p2

    if-eq p1, v7, :cond_1c0

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1bb

    const/16 p2, 0x12

    if-eq p1, p2, :cond_1b6

    if-eq p1, v2, :cond_1c0

    if-eq p1, v0, :cond_1c0

    return-void

    :cond_1b6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v0, p1, Lcom/google/android/gms/internal/ads/hA;->j3:I

    return-void

    :cond_1bb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v2, p1, Lcom/google/android/gms/internal/ads/hA;->j3:I

    return-void

    :cond_1c0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v1, p1, Lcom/google/android/gms/internal/ads/hA;->j3:I

    return-void

    :pswitch_1c5  #0x55b9
    long-to-int p1, p2

    if-eq p1, v7, :cond_1d0

    if-eq p1, v6, :cond_1cb

    return-void

    :cond_1cb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v7, p1, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    return-void

    :cond_1d0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v6, p1, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    return-void

    :cond_1d5
    cmp-long p1, p2, v3

    if-nez p1, :cond_1da

    goto :goto_1fa

    :cond_1da
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1f4
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1fb

    :cond_1fa
    :goto_1fa
    return-void

    :cond_1fb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :sswitch_data_216
    .sparse-switch
        0x83 -> :sswitch_172
        0x88 -> :sswitch_168
        0x9b -> :sswitch_161
        0x9f -> :sswitch_15b
        0xb0 -> :sswitch_155
        0xb3 -> :sswitch_14b
        0xba -> :sswitch_145
        0xd7 -> :sswitch_13f
        0xe7 -> :sswitch_138
        0xf1 -> :sswitch_12c
        0xfb -> :sswitch_129
        0x4254 -> :sswitch_107
        0x4285 -> :sswitch_df
        0x42f7 -> :sswitch_bf
        0x47e1 -> :sswitch_9b
        0x47e8 -> :sswitch_79
        0x53ac -> :sswitch_73
        0x53b8 -> :sswitch_53
        0x54b0 -> :sswitch_4d
        0x54b2 -> :sswitch_47
        0x54ba -> :sswitch_41
        0x55aa -> :sswitch_37
        0x56aa -> :sswitch_32
        0x56bb -> :sswitch_2d
        0x6264 -> :sswitch_27
        0x23e383 -> :sswitch_21
        0x2ad7b1 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_284
    .packed-switch 0x55b9
        :pswitch_1c5  #000055b9
        :pswitch_1a6  #000055ba
        :pswitch_185  #000055bb
        :pswitch_17f  #000055bc
        :pswitch_178  #000055bd
    .end packed-switch
.end method

.method final j6(IJJ)V
    .registers 11

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_93

    const/16 v0, 0xae

    if-eq p1, v0, :cond_8a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_87

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_81

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_77

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_76

    const v0, 0x18538067

    if-eq p1, v0, :cond_5f

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_50

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_30

    goto :goto_7b

    :cond_30
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-nez p1, :cond_7b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eA;->gn:Z

    if-eqz p1, :cond_41

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_41

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    return-void

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    new-instance p2, Lcom/google/android/gms/internal/ads/Xz;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    return-void

    :cond_50
    new-instance p1, Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/FD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    new-instance p1, Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/FD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    return-void

    :cond_5f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_72

    cmp-long p1, v3, p2

    if-nez p1, :cond_6a

    goto :goto_72

    :cond_6a
    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    :goto_72
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/eA;->j3:J

    :cond_76
    return-void

    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    return-void

    :cond_81
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    return-void

    :cond_87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    return-void

    :cond_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/hA;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hA;-><init>(Lcom/google/android/gms/internal/ads/fA;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    return-void

    :cond_93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    return-void
.end method

.method final j6(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_14

    const v0, 0x22b59c

    if-eq p1, v0, :cond_e

    goto :goto_4b

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/hA;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4b

    :cond_14
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_4b

    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    return-void
.end method

.method public final j6(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cA;->reset()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jA;->j6()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eA;->FH()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/iA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/iA;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iA;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result p1

    return p1
.end method
