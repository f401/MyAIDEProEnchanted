.class public Labcd/YI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/YI$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/yE;

.field private final FH:Ljava/lang/String;

.field private final Hw:Labcd/gJ;

.field private VH:Labcd/YI$a;

.field private final Zo:Z

.field private gn:Z

.field private final j6:Labcd/yE;

.field private final tp:Labcd/UE;

.field private u7:Ljava/lang/String;

.field private final v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Labcd/UE;Ljava/lang/String;Labcd/yE;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V
    .registers 15

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_6

    if-nez p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iput-object p2, p0, Labcd/YI;->v5:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_4

    iput-object p3, p0, Labcd/YI;->DW:Labcd/yE;

    :goto_1
    iput-object p4, p0, Labcd/YI;->FH:Ljava/lang/String;

    iput-boolean p5, p0, Labcd/YI;->Zo:Z

    if-eqz p6, :cond_5

    if-eqz p1, :cond_5

    new-instance v0, Labcd/gJ;

    iget-object v5, p0, Labcd/YI;->DW:Labcd/yE;

    const-string v6, "push"

    move-object v1, p1

    move-object v2, p6

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Labcd/gJ;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    :goto_2
    iput-object p1, p0, Labcd/YI;->tp:Labcd/UE;

    iput-object p7, p0, Labcd/YI;->j6:Labcd/yE;

    sget-object v0, Labcd/YI$a;->j6:Labcd/YI$a;

    iput-object v0, p0, Labcd/YI;->VH:Labcd/YI$a;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sourceRefDoesntResolveToAnyObject:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    invoke-virtual {p3, v0}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/YI;->v5:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Labcd/YI;->v5:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/YI;->DW:Labcd/yE;

    goto :goto_1

    :cond_5
    iput-object v1, p0, Labcd/YI;->Hw:Labcd/gJ;

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->remoteNameCantBeNull:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V
    .registers 15

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Labcd/YI;-><init>(Labcd/UE;Ljava/lang/String;Labcd/yE;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V

    return-void

    :cond_0
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/YI;->DW:Labcd/yE;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/YI;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public Hw()Labcd/YI$a;
    .registers 2

    iget-object v0, p0, Labcd/YI;->VH:Labcd/YI$a;

    return-object v0
.end method

.method public VH()Z
    .registers 3

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/YI;->DW:Labcd/yE;

    invoke-virtual {v0, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    return v0
.end method

.method public Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gn()Z
    .registers 2

    iget-object v0, p0, Labcd/YI;->j6:Labcd/yE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/YI;->j6:Labcd/yE;

    return-object v0
.end method

.method j6(Labcd/YI$a;)V
    .registers 2

    iput-object p1, p0, Labcd/YI;->VH:Labcd/YI$a;

    return-void
.end method

.method protected j6(Labcd/qG;)V
    .registers 3

    invoke-virtual {p0}, Labcd/YI;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    invoke-virtual {v0, p1}, Labcd/gJ;->j6(Labcd/qG;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    invoke-virtual {v0, p1}, Labcd/gJ;->DW(Labcd/qG;)V

    goto :goto_0
.end method

.method j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/YI;->u7:Ljava/lang/String;

    return-void
.end method

.method j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/YI;->gn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "RemoteRefUpdate[remoteName="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/YI;->FH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/YI;->VH:Labcd/YI$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/YI;->j6:Labcd/yE;

    const-string v1, "(null)"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/YI;->DW:Labcd/yE;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Labcd/YI;->gn:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v0, ", fastForward"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", srcRef="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/YI;->v5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Labcd/YI;->Zo:Z

    if-eqz v0, :cond_3

    const-string v0, ", forceUpdate"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/YI;->u7:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/YI;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "(null)"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_2

    :cond_2
    const-string v0, "null"

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public u7()Z
    .registers 2

    iget-boolean v0, p0, Labcd/YI;->Zo:Z

    return v0
.end method

.method public v5()Labcd/gJ;
    .registers 2

    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    return-object v0
.end method
