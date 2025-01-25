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

    if-eqz v0, :cond_c

    iput-object p1, p0, Labcd/oM;->DW:Ljava/lang/String;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not an OID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([B)V
    .registers 19

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Labcd/EL;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide v8, v3

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_12
    array-length v12, v0

    if-ne v7, v12, :cond_1e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p0

    iput-object v0, v12, Labcd/oM;->DW:Ljava/lang/String;

    return-void

    :cond_1e
    move-object/from16 v12, p0

    aget-byte v13, v0, v7

    and-int/lit16 v13, v13, 0xff

    const-wide/high16 v14, 0x80000000000000L

    const/16 v2, 0x2e

    cmp-long v16, v8, v14

    if-gez v16, :cond_5f

    const-wide/16 v14, 0x80

    mul-long v8, v8, v14

    and-int/lit8 v14, v13, 0x7f

    int-to-long v14, v14

    add-long/2addr v8, v14

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_81

    if-eqz v11, :cond_58

    long-to-int v11, v8

    div-int/lit8 v11, v11, 0x28

    if-eqz v11, :cond_52

    if-eq v11, v6, :cond_49

    const/16 v11, 0x32

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v13, 0x50

    goto :goto_50

    :cond_49
    const/16 v11, 0x31

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v13, 0x28

    :goto_50
    sub-long/2addr v8, v13

    goto :goto_57

    :cond_52
    const/16 v11, 0x30

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_57
    const/4 v11, 0x0

    :cond_58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_80

    :cond_5f
    if-nez v10, :cond_65

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_65
    const/4 v14, 0x7

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    and-int/lit8 v14, v13, 0x7f

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_81

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    :goto_80
    move-wide v8, v3

    :cond_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_12
.end method

.method static DW([B)Labcd/zL;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    return-object v0

    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    sget-object v2, Labcd/oM;->j6:[[Labcd/zL;

    aget-object v3, v2, v0

    if-nez v3, :cond_1c

    new-array v3, v1, [Labcd/zL;

    aput-object v3, v2, v0

    :cond_1c
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    and-int/2addr v2, v1

    aget-object v4, v3, v2

    if-nez v4, :cond_2e

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    aput-object v0, v3, v2

    return-object v0

    :cond_2e
    invoke-virtual {v4}, Labcd/oM;->u7()[B

    move-result-object v3

    invoke-static {p0, v3}, Labcd/OP;->j6([B[B)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object v4

    :cond_39
    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    sget-object v3, Labcd/oM;->j6:[[Labcd/zL;

    aget-object v4, v3, v0

    if-nez v4, :cond_47

    new-array v4, v1, [Labcd/zL;

    aput-object v4, v3, v0

    :cond_47
    aget-object v0, v4, v2

    if-nez v0, :cond_53

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    aput-object v0, v4, v2

    return-object v0

    :cond_53
    invoke-virtual {v0}, Labcd/oM;->u7()[B

    move-result-object v1

    invoke-static {p0, v1}, Labcd/OP;->j6([B[B)Z

    move-result v1

    if-eqz v1, :cond_5e

    return-object v0

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    aget-object v0, v4, v2

    if-nez v0, :cond_6e

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    aput-object v0, v4, v2

    return-object v0

    :cond_6e
    invoke-virtual {v0}, Labcd/oM;->u7()[B

    move-result-object v1

    invoke-static {p0, v1}, Labcd/OP;->j6([B[B)Z

    move-result v1

    if-eqz v1, :cond_79

    return-object v0

    :cond_79
    new-instance v0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/zL;-><init>([B)V

    return-object v0
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_12

    goto :goto_3e

    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    if-lt v1, v4, :cond_3e

    const/16 v5, 0x32

    if-le v1, v5, :cond_1f

    goto :goto_3e

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v5, 0x0

    :goto_25
    const/4 v6, 0x2

    if-ge v1, v6, :cond_29

    return v5

    :cond_29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v4, v6, :cond_35

    const/16 v7, 0x39

    if-gt v6, v7, :cond_35

    const/4 v5, 0x1

    goto :goto_3b

    :cond_35
    if-ne v6, v3, :cond_3e

    if-nez v5, :cond_3a

    return v2

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_3e
    :goto_3e
    return v2
.end method

.method public static j6(Ljava/lang/Object;)Labcd/zL;
    .registers 3

    if-eqz p0, :cond_33

    instance-of v0, p0, Labcd/zL;

    if-eqz v0, :cond_7

    goto :goto_33

    :cond_7
    instance-of v0, p0, Labcd/oM;

    if-eqz v0, :cond_17

    new-instance v0, Labcd/zL;

    check-cast p0, Labcd/oM;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    check-cast p0, Labcd/zL;

    return-object p0
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

    int-to-long v1, v1

    :goto_1b
    invoke-direct {p0, p1, v1, v2}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;J)V

    :goto_1e
    invoke-virtual {v0}, Labcd/NM;->j6()Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    :cond_25
    invoke-virtual {v0}, Labcd/NM;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ge v2, v3, :cond_36

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1b

    :cond_36
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_1e
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;J)V
    .registers 9

    const/16 v0, 0x9

    new-array v0, v0, [B

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    :goto_c
    const-wide/16 v3, 0x80

    cmp-long v1, p2, v3

    if-gez v1, :cond_18

    rsub-int/lit8 p2, v2, 0x9

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_18
    const/4 v1, 0x7

    shr-long/2addr p2, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_c
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 10

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_20

    :cond_f
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_14
    if-gez v5, :cond_21

    aget-byte p2, v3, v4

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_20
    return-void

    :cond_21
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_14
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
    .registers 3

    instance-of v0, p1, Labcd/oM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/oM;->DW:Ljava/lang/String;

    check-cast p1, Labcd/oM;

    iget-object p1, p1, Labcd/oM;->DW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Labcd/oM;->j6(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/oM;->FH:[B

    :cond_12
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

    add-int/2addr v1, v0

    return v1
.end method
