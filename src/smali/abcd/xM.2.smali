.class public Labcd/xM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# instance fields
.field private j6:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/xM;->j6:[B

    return-void
.end method


# virtual methods
.method Zo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/xM;->j6:[B

    invoke-static {v0}, Labcd/TP;->DW([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Labcd/xM;->j6:[B

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .locals 2

    const/16 v0, 0x14

    iget-object v1, p0, Labcd/xM;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .locals 2

    instance-of v0, p1, Labcd/xM;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/xM;->j6:[B

    check-cast p1, Labcd/xM;

    iget-object v1, p1, Labcd/xM;->j6:[B

    invoke-static {v0, v1}, Labcd/OP;->j6([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Labcd/xM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()I
    .locals 2

    iget-object v0, p0, Labcd/xM;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/xM;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
