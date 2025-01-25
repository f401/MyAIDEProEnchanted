.class public Labcd/AM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# instance fields
.field private j6:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/AM;->j6:[B

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/AM;->j6:[B

    invoke-static {v0}, Labcd/TP;->FH([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/AM;->j6:[B

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0xc

    iget-object v1, p0, Labcd/AM;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/AM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/AM;

    iget-object v0, p0, Labcd/AM;->j6:[B

    iget-object p1, p1, Labcd/AM;->j6:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/AM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/AM;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/AM;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
