.class public Labcd/BN;
.super Labcd/cM;


# direct methods
.method public constructor <init>(Labcd/cM;)V
    .registers 3

    invoke-virtual {p1}, Labcd/cM;->u7()[B

    move-result-object v0

    invoke-virtual {p1}, Labcd/cM;->tp()I

    move-result p1

    invoke-direct {p0, v0, p1}, Labcd/cM;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/cM;->DW:[B

    array-length v0, v0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/cM;->DW:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/cM;->DW:[B

    aget-byte v3, v2, v3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_14
.end method
