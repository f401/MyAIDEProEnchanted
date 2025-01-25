.class public Labcd/kM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# instance fields
.field private j6:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/kM;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_16

    invoke-static {p1}, Labcd/kM;->DW(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    invoke-static {p1}, Labcd/TP;->j6(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Labcd/kM;->j6:[B

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "string cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/kM;->j6:[B

    return-void
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-gez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/kM;->j6:[B

    invoke-static {v0}, Labcd/TP;->DW([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/kM;->j6:[B

    invoke-static {v0}, Labcd/OP;->DW([B)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0x16

    iget-object v1, p0, Labcd/kM;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/kM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/kM;

    iget-object v0, p0, Labcd/kM;->j6:[B

    iget-object p1, p1, Labcd/kM;->j6:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/kM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/kM;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/kM;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
