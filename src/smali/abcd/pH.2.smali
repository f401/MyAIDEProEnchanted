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
    .registers 6

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/pH;->j6:Labcd/yE;

    add-int/lit8 v0, p2, 0x28

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_3

    invoke-static {p1, v1}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/pH;->DW:Labcd/yE;

    add-int/lit8 v0, v1, 0x28

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_2

    invoke-static {p1, v1}, Labcd/IK;->tp([BI)Labcd/KE;

    move-result-object v0

    iput-object v0, p0, Labcd/pH;->FH:Labcd/KE;

    const/16 v0, 0x9

    invoke-static {p1, v1, v0}, Labcd/IK;->j6([BIC)I

    move-result v1

    array-length v2, p1

    const-string v0, ""

    if-lt v1, v2, :cond_0

    const-string v0, ""

    iput-object v0, p0, Labcd/pH;->Hw:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v1}, Labcd/IK;->Zo([BI)I

    move-result v2

    if-le v2, v1, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-static {p1, v1, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Labcd/pH;->Hw:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->rawLogMessageDoesNotParseAsLogEntry:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->rawLogMessageDoesNotParseAsLogEntry:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/pH;->j6:Labcd/yE;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/pH;->DW:Labcd/yE;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/pH;->FH()Labcd/KE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

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
