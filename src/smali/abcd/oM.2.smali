.class public Labcd/oM;
.super Labcd/EL;


# static fields
.field private static j6:[[Labcd/zL;


# instance fields
.field DW:Ljava/lang/String;

.field private FH:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xff

    new-array v0, v0, [[Labcd/zL;

    sput-object v0, Labcd/oM;->j6:[[Labcd/zL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Labcd/EL;-><init>()V

    invoke-static {p1}, Labcd/oM;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Labcd/oM;->DW:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not an OID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>([B)V
    .registers 12

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    :goto_0
    array-length v6, p1

    if-ne v4, v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oM;->DW:Ljava/lang/String;

    return-void

    :cond_0
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    const-wide/high16 v8, 0x80000000000000L

    cmp-long v7, v2, v8

    if-gez v7, :cond_5

    const-wide/16 v8, 0x80

    mul-long/2addr v2, v8

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    add-long/2addr v2, v8

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    long-to-int v1, v2

    div-int/lit8 v1, v1, 0x28

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const/16 v1, 0x32

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v6, 0x50

    :goto_1
    sub-long/2addr v2, v6

    :goto_2
    const/4 v1, 0x0

    :cond_1
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_3
    const-wide/16 v2, 0x0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x31

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v6, 0x28

    goto :goto_1

    :cond_4
    const/16 v1, 0x30

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :cond_6
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    goto :goto_3
.end method

.method static DW([B)Labcd/zL;
    .registers 6

    const/16 v4, 0xff

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    and-int/lit16 v2, v0, 0xff

    sget-object v1, Labcd/oM;->j6:[[Labcd/zL;

    aget-object v0, v1, v2

    if-nez v0, :cond_1

    new-array v0, v4, [Labcd/zL;

    aput-object v0, v1, v2

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v3, v1, 0xff

    aget-object v1, v0, v3

    if-nez v1, :cond_2

    new-instance v1, Labcd/zL;

    invoke-direct {v1, p0}, Labcd/zL;-><init>([B)V

    aput-object v1, v0, v3

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/oM;->u7()[B

    move-result-object v0

    invoke-static {p0, v0}, Labcd/OP;->j6([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    rem-int/lit16 v1, v0, 0x100

    sget-object v2, Labcd/oM;->j6:[[Labcd/zL;

    aget-object v0, v2, v1

    if-nez v0, :cond_4

    new-array v0, v4, [Labcd/zL;

    aput-object v0, v2, v1

    :cond_4
    aget-object v1, v0, v3

    if-nez v1, :cond_5

    new-instance v1, Labcd/zL;

    invoke-direct {v1, p0}, Labcd/zL;-><init>([B)V

    aput-object v1, v0, v3

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Labcd/oM;->u7()[B

    move-result-object v2

    invoke-static {p0, v2}, Labcd/OP;->j6([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v3, 0x1

    rem-int/lit16 v2, v1, 0x100

    aget-object v1, v0, v2

    if-nez v1, :cond_7

    new-instance v1, Labcd/zL;

    invoke-direct {v1, p0}, Labcd/zL;-><init>([B)V

    aput-object v1, v0, v2

    move-object v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Labcd/oM;->u7()[B

    move-result-object v0

    invoke-static {p0, v0}, Labcd/OP;->j6([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    goto :goto_0
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 9

    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_0

    const/16 v3, 0x32

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v0, v2

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v7, v4, :cond_3

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3

    move v0, v1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-ne v4, v6, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_2
.end method

.method public static j6(Ljava/lang/Object;)Labcd/zL;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/zL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/zL;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Labcd/oM;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/zL;

    check-cast p0, Labcd/oM;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;)V
    .registers 6

    new-instance v0, Labcd/NM;

    iget-object v1, p0, Labcd/oM;->DW:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/NM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/NM;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    invoke-virtual {v0}, Labcd/NM;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-direct {p0, p1, v2, v3}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;J)V

    :goto_0
    invoke-virtual {v0}, Labcd/NM;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Labcd/NM;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    const/16 v0, 0x8

    const/16 v1, 0x9

    new-array v1, v1, [B

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    new-array v2, v0, [B

    add-int/lit8 v1, v0, -0x1

    move v0, v1

    :goto_1
    if-gez v0, :cond_1

    aget-byte v0, v2, v1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    array-length v0, v2

    invoke-virtual {p1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v3, 0x7

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/oM;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    invoke-virtual {p0}, Labcd/oM;->u7()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Labcd/CL;->j6(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Labcd/CL;->DW(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6([B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 4

    instance-of v0, p1, Labcd/oM;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/oM;->DW:Ljava/lang/String;

    check-cast p1, Labcd/oM;

    iget-object v1, p1, Labcd/oM;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/oM;->DW:Ljava/lang/String;

    return-object v0
.end method

.method protected u7()[B
    .registers 2

    iget-object v0, p0, Labcd/oM;->FH:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/oM;->FH:[B

    :cond_0
    iget-object v0, p0, Labcd/oM;->FH:[B

    return-object v0
.end method

.method v5()I
    .registers 3

    invoke-virtual {p0}, Labcd/oM;->u7()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
