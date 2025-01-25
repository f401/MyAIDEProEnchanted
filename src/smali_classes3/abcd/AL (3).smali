.class public abstract Labcd/AL;
.super Labcd/EL;

# interfaces
.implements Labcd/BL;


# instance fields
.field j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/AL;->j6:[B

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/AL;
    .registers 3

    if-eqz p0, :cond_5d

    instance-of v0, p0, Labcd/AL;

    if-eqz v0, :cond_7

    goto :goto_5d

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_2f

    :try_start_b
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to construct OCTET STRING from byte[]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    instance-of v0, p0, Labcd/qL;

    if-eqz v0, :cond_41

    move-object v0, p0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    instance-of v1, v0, Labcd/AL;

    if-eqz v1, :cond_41

    check-cast v0, Labcd/AL;

    return-object v0

    :cond_41
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

    :cond_5d
    :goto_5d
    check-cast p0, Labcd/AL;

    return-object p0
.end method


# virtual methods
.method public FH()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Labcd/AL;->j6:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method VH()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/pM;

    iget-object v1, p0, Labcd/AL;->j6:[B

    invoke-direct {v0, v1}, Labcd/pM;-><init>([B)V

    return-object v0
.end method

.method gn()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/pM;

    iget-object v1, p0, Labcd/AL;->j6:[B

    invoke-direct {v0, v1}, Labcd/pM;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Labcd/AL;->u7()[B

    move-result-object v0

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method public j6()Labcd/EL;
    .registers 1

    invoke-virtual {p0}, Labcd/EL;->DW()Labcd/EL;

    return-object p0
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/AL;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/AL;

    iget-object v0, p0, Labcd/AL;->j6:[B

    iget-object p1, p1, Labcd/AL;->j6:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Labcd/AL;->j6:[B

    invoke-static {v2}, Labcd/VP;->j6([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/AL;->j6:[B

    return-object v0
.end method
