.class public Labcd/cM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# static fields
.field private static final j6:[C


# instance fields
.field protected DW:[B

.field protected FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Labcd/cM;->j6:[C

    return-void

    :array_0
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Labcd/qL;)V
    .registers 5

    invoke-direct {p0}, Labcd/EL;-><init>()V

    :try_start_0
    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/cM;->DW:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/cM;->FH:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing object : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/cM;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/cM;->DW:[B

    iput p2, p0, Labcd/cM;->FH:I

    return-void
.end method

.method static DW([B)Labcd/cM;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    array-length v0, p0

    if-lt v0, v4, :cond_1

    aget-byte v0, p0, v3

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance v2, Labcd/cM;

    invoke-direct {v2, v1, v0}, Labcd/cM;-><init>([BI)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(ILjava/io/InputStream;)Labcd/cM;
    .registers 6

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    add-int/lit8 v1, p0, -0x1

    new-array v1, v1, [B

    array-length v2, v1

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Labcd/XP;->j6(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v1

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Labcd/cM;

    invoke-direct {v2, v1, v0}, Labcd/cM;-><init>([BI)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/LL;Z)Labcd/cM;
    .registers 4

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Labcd/cM;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Labcd/AL;

    invoke-virtual {v0}, Labcd/AL;->u7()[B

    move-result-object v0

    invoke-static {v0}, Labcd/cM;->DW([B)Labcd/cM;

    move-result-object v0

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/cM;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/cM;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/cM;

    return-object p0

    :cond_1
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


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Labcd/CL;

    invoke-direct {v2, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p0}, Labcd/CL;->j6(Labcd/qL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v3, Labcd/cM;->j6:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Labcd/cM;->j6:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/cM;->FH:I

    iget-object v1, p0, Labcd/cM;->DW:[B

    invoke-static {v1}, Labcd/OP;->DW([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/cM;->u7()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {p0}, Labcd/cM;->tp()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    invoke-virtual {p0}, Labcd/cM;->u7()[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method protected j6(Labcd/EL;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/cM;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/cM;

    iget v1, p0, Labcd/cM;->FH:I

    iget v2, p1, Labcd/cM;->FH:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Labcd/cM;->DW:[B

    iget-object v2, p1, Labcd/cM;->DW:[B

    invoke-static {v1, v2}, Labcd/OP;->j6([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/cM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget v0, p0, Labcd/cM;->FH:I

    return v0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/cM;->DW:[B

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/cM;->DW:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/cM;->DW:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
