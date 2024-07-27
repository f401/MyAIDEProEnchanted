.class public Labcd/eM;
.super Labcd/EL;


# static fields
.field private static j6:[Labcd/sL;


# instance fields
.field DW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [Labcd/sL;

    sput-object v0, Labcd/eM;->j6:[Labcd/sL;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/eM;->DW:[B

    return-void
.end method

.method static DW([B)Labcd/sL;
    .registers 5

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Labcd/sL;

    invoke-static {p0}, Labcd/OP;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/sL;-><init>([B)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    sget-object v2, Labcd/eM;->j6:[Labcd/sL;

    array-length v0, v2

    if-lt v1, v0, :cond_2

    new-instance v0, Labcd/sL;

    invoke-static {p0}, Labcd/OP;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/sL;-><init>([B)V

    goto :goto_0

    :cond_2
    aget-object v0, v2, v1

    if-nez v0, :cond_0

    new-instance v0, Labcd/sL;

    invoke-static {p0}, Labcd/OP;->j6([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Labcd/sL;-><init>([B)V

    aput-object v0, v2, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/eM;->DW:[B

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0xa

    iget-object v1, p0, Labcd/eM;->DW:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 4

    instance-of v0, p1, Labcd/eM;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Labcd/eM;

    iget-object v0, p0, Labcd/eM;->DW:[B

    iget-object v1, p1, Labcd/eM;->DW:[B

    invoke-static {v0, v1}, Labcd/OP;->j6([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public u7()Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Labcd/eM;->DW:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/eM;->DW:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/eM;->DW:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
