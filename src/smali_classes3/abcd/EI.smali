.class public Labcd/EI;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:Ljava/io/OutputStream;

.field private final FH:[B

.field private Hw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Labcd/EI;->j6:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/EI;->DW:Ljava/io/OutputStream;

    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/EI;->FH:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/EI;->Hw:Z

    return-void
.end method

.method private j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/EI;->FH:[B

    invoke-static {v0, p1}, Labcd/EI;->j6([BI)V

    return-void
.end method

.method static j6([BI)V
    .registers 5

    const/4 v0, 0x3

    :goto_1
    if-ltz v0, :cond_13

    if-nez p1, :cond_6

    goto :goto_13

    :cond_6
    sget-object v1, Labcd/EI;->j6:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    ushr-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_13
    :goto_13
    if-gez v0, :cond_16

    return-void

    :cond_16
    const/16 p1, 0x30

    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Labcd/EI;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public j6()V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/EI;->j6(I)V

    iget-object v1, p0, Labcd/EI;->DW:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/EI;->FH:[B

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-boolean v0, p0, Labcd/EI;->Hw:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Labcd/EI;->DW()V

    :cond_13
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/EI;->j6([B)V

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/EI;->Hw:Z

    return-void
.end method

.method public j6([B)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Labcd/EI;->j6(I)V

    iget-object v0, p0, Labcd/EI;->DW:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/EI;->FH:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Labcd/EI;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
