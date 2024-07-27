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
            "Landroid/util/SparseArray",
            "<",
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
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/fA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->j6:Lcom/google/android/gms/internal/ads/Sz;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->FH:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/eA;->Hw:Ljava/util/UUID;

    return-void

    nop

    :array_0
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

    :array_1
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
    .registers 9

    const-wide/16 v4, -0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    new-instance v1, Lcom/google/android/gms/internal/ads/gA;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/gA;-><init>(Lcom/google/android/gms/internal/ads/eA;Lcom/google/android/gms/internal/ads/fA;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cA;->j6(Lcom/google/android/gms/internal/ads/dA;)V

    const/4 v0, 0x1

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->gn:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/jA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jA;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    sget-object v1, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic DW()Ljava/util/UUID;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/eA;->Hw:Ljava/util/UUID;

    return-object v0
.end method

.method static DW(I)Z
    .registers 2

    const v0, 0x1549a966

    if-eq p0, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .registers 2

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private final j6(J)J
    .registers 10

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    if-lt v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->j6()I

    move-result v0

    if-ge v0, p2, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V
    .registers 14

    const/16 v7, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    array-length v0, v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->j6()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    sget-object v3, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    sget-object v3, Lcom/google/android/gms/internal/ads/eA;->DW:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mz:Z

    if-nez v0, :cond_e

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->I:Z

    const/16 v3, 0x80

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0x80

    const/16 v6, 0x80

    if-eq v4, v6, :cond_8

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/eA;->Qq:B

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->I:Z

    :cond_3
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/eA;->Qq:B

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_d

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_9

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->ca:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v4, v2, v7}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->ca:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    if-eqz v0, :cond_a

    :goto_2
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v5, v3, v1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->QX:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v5, v3, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_4
    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->x9:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->x9:Z

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    shl-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_7

    :cond_6
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v4, v2

    :goto_3
    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->sy:I

    if-ge v4, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    rem-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    sub-int v0, v3, v0

    int-to-short v0, v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v3, v2

    goto/16 :goto_2

    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    sub-int v0, v3, v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_c
    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    sub-int v4, p3, v4

    sub-int v0, v4, v0

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XL:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v5, v0, v6}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_d
    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->Mz:Z

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    add-int/2addr v0, p3

    const-string v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aput-byte v2, v3, v2

    aput-byte v2, v3, v1

    aput-byte v2, v3, v8

    iget v1, p2, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    rsub-int/lit8 v4, v1, 0x4

    :goto_7
    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    if-ge v6, v0, :cond_15

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v1, v6

    invoke-interface {p1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    if-lez v6, :cond_10

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v7, v3, v4, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    :cond_10
    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v5, v6, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    goto :goto_7

    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->aM:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    :cond_12
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->J8:Lcom/google/android/gms/internal/ads/LD;

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    goto/16 :goto_6

    :cond_13
    :goto_8
    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->g3:I

    if-ge v1, v0, :cond_15

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I

    goto :goto_8

    :cond_14
    invoke-direct {p0, p1, v5, v6}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Yz;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/eA;->aj:I

    goto :goto_7

    :cond_15
    const-string v0, "A_VORBIS"

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v5, v0, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    goto/16 :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/hA;J)V
    .registers 16

    const-wide v8, 0xd693a400L

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/eA;->FH:[B

    :goto_0
    const/16 v2, 0x13

    const/16 v3, 0xc

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->Ws:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->lp:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eA;->FH()V

    return-void

    :cond_1
    div-long v4, v2, v8

    long-to-int v0, v4

    int-to-long v4, v0

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0x3938700

    mul-int/2addr v5, v4

    int-to-long v8, v5

    sub-long/2addr v2, v8

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v5, v8

    const v7, 0xf4240

    mul-int/2addr v7, v5

    int-to-long v8, v7

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-int v2, v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d:%02d,%03d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v10

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->FH(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static j6([II)[I
    .registers 3

    if-nez p0, :cond_1

    new-array p0, p1, [I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method


# virtual methods
.method final FH(I)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xa0

    if-eq p1, v2, :cond_12

    const/16 v2, 0xae

    if-eq p1, v2, :cond_e

    const/16 v0, 0x4dbb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_9

    const v0, 0x1549a966

    if-eq p1, v0, :cond_7

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_5

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    new-instance v0, Lcom/google/android/gms/internal/ads/Xz;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FD;->j6()I

    move-result v3

    new-array v4, v3, [I

    new-array v5, v3, [J

    new-array v6, v3, [J

    new-array v7, v3, [J

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_14

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/FD;->j6(I)J

    move-result-wide v8

    aput-wide v8, v7, v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/FD;->j6(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v5, v1

    aget-wide v10, v5, v0

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v4, v0

    aget-wide v8, v7, v1

    aget-wide v10, v7, v0

    sub-long/2addr v8, v10

    aput-wide v8, v6, v0

    move v0, v1

    goto :goto_3

    :cond_4
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/eA;->j3:J

    add-long/2addr v8, v10

    aget-wide v10, v5, v1

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v4, v1

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    aget-wide v10, v7, v1

    sub-long/2addr v8, v10

    aput-wide v8, v6, v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    new-instance v0, Lcom/google/android/gms/internal/ads/Lz;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Lz;-><init>([I[J[J[J)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    if-eqz v1, :cond_b

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhp$zza;

    sget-object v6, Lcom/google/android/gms/internal/ads/uy;->DW:Ljava/util/UUID;

    const-string v7, "video/webm"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    invoke-direct {v5, v6, v7, v1}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;-><init>([Lcom/google/android/gms/internal/ads/zzhp$zza;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    const-string v2, "V_VP8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_VP9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEG2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_THEORA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_OPUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_VORBIS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_AAC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_MPEG/L2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_MPEG/L3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_AC3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_EAC3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_TRUEHD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_DTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_FLAC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_MS/ACM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "S_VOBSUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "S_DVBSUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->DW:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/Rz;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iget v2, v1, Lcom/google/android/gms/internal/ads/hA;->DW:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hA;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/hA;J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto/16 :goto_3
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 11

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/eA;->OW:Z

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/cA;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    if-eqz v2, :cond_0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    iput-wide v4, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :goto_3
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iput-wide v4, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/eA;->P8:J

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method final j6(ID)V
    .registers 6

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->er:F

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    goto :goto_0

    :cond_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->a8:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->ro:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
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

.method final j6(IILcom/google/android/gms/internal/ads/Qz;)V
    .registers 14

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4255

    if-eq p1, v0, :cond_4

    const/16 v0, 0x47e2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x53ab

    if-eq p1, v0, :cond_2

    const/16 v0, 0x63a2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7672

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    rsub-int/lit8 v1, p2, 0x4

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->J0:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    goto :goto_0

    :cond_3
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-instance v2, Lcom/google/android/gms/internal/ads/Zz;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Zz;-><init>(I[B)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/hA;->VH:Lcom/google/android/gms/internal/ads/Zz;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hA;->Zo:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jA;->DW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->VH:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->ef:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hA;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int v0, p2, v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/4 v1, 0x3

    invoke-direct {p0, p3, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x6

    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/eA;->j6([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x3

    aput v3, v1, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    :goto_2
    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->FH:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    :cond_8
    const/4 v2, 0x1

    :goto_3
    if-eqz v1, :cond_18

    const/high16 v1, -0x80000000

    :goto_4
    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->vJ:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    :cond_9
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_1c

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v1, v2, v1

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->cn:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->Hw:I

    mul-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/hA;J)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/eA;->cb:I

    goto :goto_5

    :cond_a
    const/16 v2, 0xa3

    if-ne p1, v2, :cond_1a

    const/4 v2, 0x4

    invoke-direct {p0, p3, v2}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/eA;->j6([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget v1, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x4

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    :goto_6
    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p3, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v6, v5, v1

    add-int/2addr v6, v4

    aput v6, v5, v1

    const/16 v6, 0xff

    if-eq v4, v6, :cond_c

    aget v4, v5, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int v5, p2, v5

    sub-int v3, v5, v3

    sub-int v2, v3, v2

    aput v2, v1, v4

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    :goto_7
    iget v4, p0, Lcom/google/android/gms/internal/ads/eA;->dx:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_15

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p3, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/lit8 v8, v3, -0x1

    aget-byte v4, v4, v8

    if-eqz v4, :cond_14

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_8
    const/16 v6, 0x8

    if-ge v7, v6, :cond_10

    const/4 v6, 0x1

    rsub-int/lit8 v9, v7, 0x7

    shl-int/2addr v6, v9

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v9, v9, v8

    and-int/2addr v9, v6

    if-eqz v9, :cond_11

    add-int/2addr v3, v7

    invoke-direct {p0, p3, v3}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v8, 0x1

    :goto_9
    if-ge v6, v3, :cond_f

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    if-lez v1, :cond_10

    const-wide/16 v8, 0x1

    mul-int/lit8 v6, v7, 0x7

    add-int/lit8 v6, v6, 0x6

    shl-long v6, v8, v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    :cond_10
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_13

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_13

    long-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    if-nez v1, :cond_12

    :goto_a
    aput v4, v5, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_8

    :cond_12
    add-int/lit8 v6, v1, -0x1

    aget v6, v5, v6

    add-int/2addr v4, v6

    goto :goto_a

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/eA;->Sf:I

    sub-int v5, p2, v5

    sub-int v3, v5, v3

    sub-int v2, v3, v2

    aput v2, v1, v4

    goto/16 :goto_1

    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->sG:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ads/eA;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/hA;I)V

    goto/16 :goto_0
.end method

.method final j6(IJ)V
    .registers 12

    const/4 v1, 0x0

    const/4 v6, 0x6

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    const/4 v0, 0x1

    const/16 v2, 0x5031

    if-eq p1, v2, :cond_d

    const/16 v2, 0x5032

    if-eq p1, v2, :cond_c

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->a8:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->U2:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    long-to-int v2, p2

    if-eq v2, v0, :cond_3

    const/16 v0, 0x9

    if-eq v2, v0, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    if-eq v2, v6, :cond_1

    const/4 v0, 0x7

    if-ne v2, v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v3, v0, Lcom/google/android/gms/internal/ads/hA;->aM:I

    goto :goto_0

    :cond_2
    iput v6, v1, Lcom/google/android/gms/internal/ads/hA;->aM:I

    goto :goto_0

    :cond_3
    iput v0, v1, Lcom/google/android/gms/internal/ads/hA;->aM:I

    goto :goto_0

    :pswitch_3
    long-to-int v1, p2

    if-eq v1, v0, :cond_4

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6

    const/16 v0, 0x12

    if-eq v1, v0, :cond_5

    if-eq v1, v6, :cond_4

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    const/4 v1, 0x7

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v6, v0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    goto :goto_0

    :pswitch_4
    long-to-int v1, p2

    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v0, v1, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v3, v0, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    goto :goto_0

    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/eA;->U2:J

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->Hw:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/hA;->sh:J

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/hA;->cn:J

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    cmp-long v3, p2, v4

    if-nez v3, :cond_f

    :goto_1
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/hA;->dx:Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->J8:I

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    goto/16 :goto_0

    :sswitch_9
    long-to-int v2, p2

    if-eqz v2, :cond_a

    if-eq v2, v0, :cond_9

    const/4 v1, 0x3

    if-eq v2, v1, :cond_8

    const/16 v0, 0xf

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v0, v1, Lcom/google/android/gms/internal/ads/hA;->QX:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v3, v0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    goto/16 :goto_0

    :sswitch_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    goto/16 :goto_0

    :sswitch_b
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_d
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_e
    cmp-long v0, p2, v4

    if-ltz v0, :cond_b

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_f
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    goto/16 :goto_0

    :sswitch_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/FD;->j6(J)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->DW:I

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/FD;->j6(J)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->SI:I

    goto/16 :goto_0

    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->sh:J

    goto/16 :goto_0

    :sswitch_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    cmp-long v3, p2, v4

    if-nez v3, :cond_e

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/hA;->cb:Z

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->FH:I

    goto/16 :goto_0

    :cond_c
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move v0, v1

    goto :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final j6(IJJ)V
    .registers 12

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    if-eq p1, v0, :cond_8

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_0

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_3

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eA;->gn:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->vy:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->BT:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->XX:Lcom/google/android/gms/internal/ads/Rz;

    new-instance v1, Lcom/google/android/gms/internal/ads/Xz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->lg:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eA;->er:Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/FD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->nw:Lcom/google/android/gms/internal/ads/FD;

    new-instance v0, Lcom/google/android/gms/internal/ads/FD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/FD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->SI:Lcom/google/android/gms/internal/ads/FD;

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    cmp-long v0, v0, p2

    if-nez v0, :cond_6

    :cond_5
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/eA;->Mr:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/eA;->j3:J

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/hA;->v5:Z

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->yS:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eA;->gW:J

    goto :goto_0

    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->KD:Z

    goto :goto_0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/hA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hA;-><init>(Lcom/google/android/gms/internal/ads/fA;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    goto :goto_0

    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/eA;->br:Z

    goto :goto_0
.end method

.method final j6(ILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x86

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const v0, 0x22b59c

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/hA;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->rN:Lcom/google/android/gms/internal/ads/hA;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j6(JJ)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eA;->ei:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eA;->ro:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->v5:Lcom/google/android/gms/internal/ads/cA;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cA;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eA;->Zo:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jA;->j6()V

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

    move-result v0

    return v0
.end method
