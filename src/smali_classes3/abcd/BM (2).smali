.class public Labcd/BM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# static fields
.field private static final j6:[C


# instance fields
.field private DW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Labcd/BM;->j6:[C

    return-void

    :array_a
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

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/BM;->DW:[B

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Labcd/CL;

    invoke-direct {v2, v1}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    :try_start_11
    invoke-virtual {v2, p0}, Labcd/CL;->j6(Labcd/qL;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_3a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    array-length v3, v1

    if-ne v2, v3, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    sget-object v3, Labcd/BM;->j6:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :catch_3a
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/BM;->DW:[B

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0x1c

    invoke-virtual {p0}, Labcd/BM;->u7()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/BM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/BM;->DW:[B

    check-cast p1, Labcd/BM;

    iget-object p1, p1, Labcd/BM;->DW:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/BM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/BM;->DW:[B

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/BM;->DW:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/BM;->DW:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
