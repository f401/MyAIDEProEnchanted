.class public Labcd/uE;
.super Labcd/YD;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/YD;-><init>()V

    return-void
.end method

.method private Zo([BI)V
    .registers 5

    :try_start_0
    invoke-static {p1, p2}, Labcd/IK;->gn([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->FH:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Labcd/IK;->gn([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->Hw:I

    add-int/lit8 v0, p2, 0x10

    invoke-static {p1, v0}, Labcd/IK;->gn([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->v5:I

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Labcd/IK;->gn([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->Zo:I

    add-int/lit8 v0, p2, 0x20

    invoke-static {p1, v0}, Labcd/IK;->gn([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->VH:I
    :try_end_26
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v0

    new-instance v0, Labcd/aD;

    const/16 v1, 0x28

    invoke-direct {v0, p1, p2, v1}, Labcd/aD;-><init>([BII)V

    throw v0
.end method


# virtual methods
.method public Hw([BI)V
    .registers 4

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->FH:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->Hw:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->v5:I

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    iput v0, p0, Labcd/YD;->Zo:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result p1

    iput p1, p0, Labcd/YD;->VH:I

    return-void
.end method

.method public J8()Labcd/yE;
    .registers 2

    new-instance v0, Labcd/yE;

    invoke-direct {v0, p0}, Labcd/yE;-><init>(Labcd/YD;)V

    return-object v0
.end method

.method public Ws()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/YD;->FH:I

    iput v0, p0, Labcd/YD;->Hw:I

    iput v0, p0, Labcd/YD;->v5:I

    iput v0, p0, Labcd/YD;->Zo:I

    iput v0, p0, Labcd/YD;->VH:I

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    invoke-static {p1}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, v2}, Labcd/uE;->Zo([BI)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidId:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v5([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/uE;->Zo([BI)V

    return-void
.end method
