.class public abstract Labcd/YD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final DW:[C

.field private static final j6:[B


# instance fields
.field FH:I

.field Hw:I

.field VH:I

.field Zo:I

.field v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Labcd/YD;->j6:[B

    new-array v0, v0, [C

    fill-array-data v0, :array_1e

    sput-object v0, Labcd/YD;->DW:[C

    return-void

    nop

    :array_12
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

    :array_1e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Ws()[B
    .registers 4

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Labcd/YD;->FH:I

    invoke-static {v0, v1, v2}, Labcd/YD;->j6([BII)V

    const/16 v1, 0x8

    iget v2, p0, Labcd/YD;->Hw:I

    invoke-static {v0, v1, v2}, Labcd/YD;->j6([BII)V

    const/16 v1, 0x10

    iget v2, p0, Labcd/YD;->v5:I

    invoke-static {v0, v1, v2}, Labcd/YD;->j6([BII)V

    const/16 v1, 0x18

    iget v2, p0, Labcd/YD;->Zo:I

    invoke-static {v0, v1, v2}, Labcd/YD;->j6([BII)V

    const/16 v1, 0x20

    iget v2, p0, Labcd/YD;->VH:I

    invoke-static {v0, v1, v2}, Labcd/YD;->j6([BII)V

    return-object v0
.end method

.method private aM()[C
    .registers 2

    const/16 v0, 0x28

    new-array v0, v0, [C

    invoke-direct {p0, v0}, Labcd/YD;->j6([C)V

    return-object v0
.end method

.method private static j6(Ljava/io/OutputStream;I)V
    .registers 3

    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static j6([BII)V
    .registers 6

    add-int/lit8 v0, p1, 0x7

    :goto_2
    if-lt v0, p1, :cond_14

    if-nez p2, :cond_7

    goto :goto_14

    :cond_7
    sget-object v1, Labcd/YD;->j6:[B

    and-int/lit8 v2, p2, 0xf

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    ushr-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_14
    :goto_14
    if-ge v0, p1, :cond_17

    return-void

    :cond_17
    const/16 p2, 0x30

    aput-byte p2, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method private j6([C)V
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Labcd/YD;->FH:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([CII)V

    const/16 v0, 0x8

    iget v1, p0, Labcd/YD;->Hw:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([CII)V

    const/16 v0, 0x10

    iget v1, p0, Labcd/YD;->v5:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([CII)V

    const/16 v0, 0x18

    iget v1, p0, Labcd/YD;->Zo:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([CII)V

    const/16 v0, 0x20

    iget v1, p0, Labcd/YD;->VH:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([CII)V

    return-void
.end method

.method static j6([CII)V
    .registers 6

    add-int/lit8 v0, p1, 0x7

    :goto_2
    if-lt v0, p1, :cond_14

    if-nez p2, :cond_7

    goto :goto_14

    :cond_7
    sget-object v1, Labcd/YD;->DW:[C

    and-int/lit8 v2, p2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    ushr-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_14
    :goto_14
    if-ge v0, p1, :cond_17

    return-void

    :cond_17
    const/16 p2, 0x30

    aput-char p2, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method public static j6(Labcd/YD;Labcd/YD;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Labcd/YD;->Hw:I

    iget v2, p1, Labcd/YD;->Hw:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Labcd/YD;->v5:I

    iget v2, p1, Labcd/YD;->v5:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Labcd/YD;->Zo:I

    iget v2, p1, Labcd/YD;->Zo:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Labcd/YD;->VH:I

    iget v2, p1, Labcd/YD;->VH:I

    if-ne v1, v2, :cond_23

    iget p0, p0, Labcd/YD;->FH:I

    iget p1, p1, Labcd/YD;->FH:I

    if-ne p0, p1, :cond_23

    return v0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public DW(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Labcd/YD;->Ws()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public DW([BI)V
    .registers 5

    iget v0, p0, Labcd/YD;->FH:I

    invoke-static {p1, p2, v0}, Labcd/FK;->DW([BII)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Labcd/YD;->Hw:I

    invoke-static {p1, v0, v1}, Labcd/FK;->DW([BII)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Labcd/YD;->v5:I

    invoke-static {p1, v0, v1}, Labcd/FK;->DW([BII)V

    add-int/lit8 v0, p2, 0xc

    iget v1, p0, Labcd/YD;->Zo:I

    invoke-static {p1, v0, v1}, Labcd/FK;->DW([BII)V

    add-int/lit8 p2, p2, 0x10

    iget v0, p0, Labcd/YD;->VH:I

    invoke-static {p1, p2, v0}, Labcd/FK;->DW([BII)V

    return-void
.end method

.method public final DW(Labcd/YD;)Z
    .registers 2

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public FH([BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Labcd/YD;->FH:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([BII)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Labcd/YD;->Hw:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([BII)V

    add-int/lit8 v0, p2, 0x10

    iget v1, p0, Labcd/YD;->v5:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([BII)V

    add-int/lit8 v0, p2, 0x18

    iget v1, p0, Labcd/YD;->Zo:I

    invoke-static {p1, v0, v1}, Labcd/YD;->j6([BII)V

    add-int/lit8 p2, p2, 0x20

    iget v0, p0, Labcd/YD;->VH:I

    invoke-static {p1, p2, v0}, Labcd/YD;->j6([BII)V

    return-void
.end method

.method public final Hw()Labcd/yE;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Labcd/yE;

    if-ne v0, v1, :cond_c

    move-object v0, p0

    check-cast v0, Labcd/yE;

    return-object v0

    :cond_c
    new-instance v0, Labcd/yE;

    invoke-direct {v0, p0}, Labcd/yE;-><init>(Labcd/YD;)V

    return-object v0
.end method

.method public abstract J8()Labcd/yE;
.end method

.method public final VH()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Zo()I
    .registers 2

    iget v0, p0, Labcd/YD;->FH:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/YD;

    invoke-virtual {p0, p1}, Labcd/YD;->j6(Labcd/YD;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/YD;

    if-eqz v0, :cond_b

    check-cast p1, Labcd/YD;

    invoke-virtual {p0, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Labcd/YD;->Hw:I

    return v0
.end method

.method public final j6(Labcd/YD;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p0, Labcd/YD;->FH:I

    iget v1, p1, Labcd/YD;->FH:I

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    iget v0, p0, Labcd/YD;->Hw:I

    iget v1, p1, Labcd/YD;->Hw:I

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    :cond_1a
    iget v0, p0, Labcd/YD;->v5:I

    iget v1, p1, Labcd/YD;->v5:I

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    :cond_25
    iget v0, p0, Labcd/YD;->Zo:I

    iget v1, p1, Labcd/YD;->Zo:I

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_30

    return v0

    :cond_30
    iget v0, p0, Labcd/YD;->VH:I

    iget p1, p1, Labcd/YD;->VH:I

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public final j6([BI)I
    .registers 5

    iget v0, p0, Labcd/YD;->FH:I

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget v0, p0, Labcd/YD;->Hw:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    :cond_1c
    iget v0, p0, Labcd/YD;->v5:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_2b

    return v0

    :cond_2b
    iget v0, p0, Labcd/YD;->Zo:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    iget v0, p0, Labcd/YD;->VH:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result p1

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public final j6([II)I
    .registers 5

    iget v0, p0, Labcd/YD;->FH:I

    aget v1, p1, p2

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget v0, p0, Labcd/YD;->Hw:I

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    :cond_18
    iget v0, p0, Labcd/YD;->v5:I

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    :cond_25
    iget v0, p0, Labcd/YD;->Zo:I

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_32

    return v0

    :cond_32
    iget v0, p0, Labcd/YD;->VH:I

    add-int/lit8 p2, p2, 0x4

    aget p1, p1, p2

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public j6(I)Labcd/WD;
    .registers 10

    new-instance v7, Labcd/WD;

    const/4 v0, 0x1

    iget v1, p0, Labcd/YD;->FH:I

    invoke-static {p1, v0, v1}, Labcd/WD;->j6(III)I

    move-result v2

    const/4 v0, 0x2

    iget v1, p0, Labcd/YD;->Hw:I

    invoke-static {p1, v0, v1}, Labcd/WD;->j6(III)I

    move-result v3

    const/4 v0, 0x3

    iget v1, p0, Labcd/YD;->v5:I

    invoke-static {p1, v0, v1}, Labcd/WD;->j6(III)I

    move-result v4

    const/4 v0, 0x4

    iget v1, p0, Labcd/YD;->Zo:I

    invoke-static {p1, v0, v1}, Labcd/WD;->j6(III)I

    move-result v5

    const/4 v0, 0x5

    iget v1, p0, Labcd/YD;->VH:I

    invoke-static {p1, v0, v1}, Labcd/WD;->j6(III)I

    move-result v6

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Labcd/WD;-><init>(IIIIII)V

    return-object v7
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 3

    iget v0, p0, Labcd/YD;->FH:I

    invoke-static {p1, v0}, Labcd/YD;->j6(Ljava/io/OutputStream;I)V

    iget v0, p0, Labcd/YD;->Hw:I

    invoke-static {p1, v0}, Labcd/YD;->j6(Ljava/io/OutputStream;I)V

    iget v0, p0, Labcd/YD;->v5:I

    invoke-static {p1, v0}, Labcd/YD;->j6(Ljava/io/OutputStream;I)V

    iget v0, p0, Labcd/YD;->Zo:I

    invoke-static {p1, v0}, Labcd/YD;->j6(Ljava/io/OutputStream;I)V

    iget v0, p0, Labcd/YD;->VH:I

    invoke-static {p1, v0}, Labcd/YD;->j6(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public j6([CLjava/io/Writer;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/YD;->j6([C)V

    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public j6([CLjava/lang/StringBuilder;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/YD;->j6([C)V

    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p2, p1, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnyObjectId["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final we()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Labcd/YD;->aM()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
