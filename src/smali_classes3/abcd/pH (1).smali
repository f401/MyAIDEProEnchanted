.class public Labcd/pH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DW:Labcd/yE;

.field private FH:Labcd/KE;

.field private Hw:Ljava/lang/String;

.field private j6:Labcd/yE;


# direct methods
.method constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/pH;->j6:Labcd/yE;

    add-int/lit8 p2, p2, 0x28

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    const/16 v1, 0x20

    if-ne p2, v1, :cond_4f

    invoke-static {p1, v0}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object p2

    iput-object p2, p0, Labcd/pH;->DW:Labcd/yE;

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_43

    invoke-static {p1, p2}, Labcd/IK;->tp([BI)Labcd/KE;

    move-result-object v0

    iput-object v0, p0, Labcd/pH;->FH:Labcd/KE;

    const/16 v0, 0x9

    invoke-static {p1, p2, v0}, Labcd/IK;->j6([BIC)I

    move-result p2

    array-length v0, p1

    const-string v1, ""

    if-lt p2, v0, :cond_35

    :cond_32
    :goto_32
    iput-object v1, p0, Labcd/pH;->Hw:Ljava/lang/String;

    goto :goto_42

    :cond_35
    invoke-static {p1, p2}, Labcd/IK;->Zo([BI)I

    move-result v0

    if-le v0, p2, :cond_32

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :goto_42
    return-void

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->rawLogMessageDoesNotParseAsLogEntry:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->rawLogMessageDoesNotParseAsLogEntry:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/pH;->DW:Labcd/yE;

    return-object v0
.end method

.method public FH()Labcd/KE;
    .registers 2

    iget-object v0, p0, Labcd/pH;->FH:Labcd/KE;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/pH;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/pH;->j6:Labcd/yE;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/pH;->DW:Labcd/yE;

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/pH;->FH()Labcd/KE;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/pH;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
