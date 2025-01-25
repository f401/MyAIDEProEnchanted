.class public Labcd/fK;
.super Labcd/jK;


# instance fields
.field final FH:Ljava/lang/String;

.field final Hw:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput-object p1, p0, Labcd/fK;->FH:Ljava/lang/String;

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Labcd/fK;->Hw:[B

    return-void
.end method

.method public static j6(Ljava/lang/String;)Labcd/fK;
    .registers 3

    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Labcd/fK;

    invoke-direct {v0, p0}, Labcd/fK;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->emptyPathNotPermitted:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/fK;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public DW(Labcd/YJ;)Z
    .registers 3

    iget-object v0, p0, Labcd/fK;->Hw:[B

    array-length v0, v0

    invoke-virtual {p1}, Labcd/YJ;->FH()I

    move-result p1

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public clone()Labcd/fK;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic clone()Labcd/jK;
    .registers 1

    invoke-virtual {p0}, Labcd/fK;->clone()Labcd/fK;

    return-object p0
.end method

.method public j6()Z
    .registers 7

    iget-object v0, p0, Labcd/fK;->Hw:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-byte v4, v0, v3

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public j6(Labcd/YJ;)Z
    .registers 4

    iget-object v0, p0, Labcd/fK;->Hw:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Labcd/YJ;->j6([BI)I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PATH(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/fK;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
