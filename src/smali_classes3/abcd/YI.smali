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
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_68

    if-nez p3, :cond_20

    if-nez p2, :cond_a

    goto :goto_20

    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->sourceRefDoesntResolveToAnyObject:Ljava/lang/String;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    invoke-static {p3, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    :goto_23
    iput-object p2, p0, Labcd/YI;->v5:Ljava/lang/String;

    goto :goto_39

    :cond_26
    if-eqz p3, :cond_37

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object p2

    invoke-virtual {p3, p2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    :cond_37
    iput-object v0, p0, Labcd/YI;->v5:Ljava/lang/String;

    :goto_39
    if-eqz p3, :cond_3e

    iput-object p3, p0, Labcd/YI;->DW:Labcd/yE;

    goto :goto_44

    :cond_3e
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object p2

    iput-object p2, p0, Labcd/YI;->DW:Labcd/yE;

    :goto_44
    iput-object p4, p0, Labcd/YI;->FH:Ljava/lang/String;

    iput-boolean p5, p0, Labcd/YI;->Zo:Z

    if-eqz p6, :cond_5d

    if-eqz p1, :cond_5d

    new-instance p2, Labcd/gJ;

    const/4 v5, 0x1

    iget-object v6, p0, Labcd/YI;->DW:Labcd/yE;

    const-string v7, "push"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p6

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Labcd/gJ;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/YI;->Hw:Labcd/gJ;

    goto :goto_5f

    :cond_5d
    iput-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    :goto_5f
    iput-object p1, p0, Labcd/YI;->tp:Labcd/UE;

    iput-object p7, p0, Labcd/YI;->j6:Labcd/yE;

    sget-object p1, Labcd/YI$a;->j6:Labcd/YI$a;

    iput-object p1, p0, Labcd/YI;->VH:Labcd/YI$a;

    return-void

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->remoteNameCantBeNull:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :goto_74
    throw p1

    :goto_75
    goto :goto_74
.end method

.method public constructor <init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V
    .registers 16

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    :goto_b
    move-object v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Labcd/YI;-><init>(Labcd/UE;Ljava/lang/String;Labcd/yE;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V

    return-void
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

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public gn()Z
    .registers 2

    iget-object v0, p0, Labcd/YI;->j6:Labcd/yE;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
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

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    invoke-virtual {v0, p1}, Labcd/gJ;->j6(Labcd/qG;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Labcd/YI;->Hw:Labcd/gJ;

    invoke-virtual {v0, p1}, Labcd/gJ;->DW(Labcd/qG;)V

    :goto_11
    return-void
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
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteRefUpdate[remoteName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/YI;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/YI;->VH:Labcd/YI$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/YI;->j6:Labcd/yE;

    const-string v2, "(null)"

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/YI;->DW:Labcd/yE;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    :cond_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Labcd/YI;->gn:Z

    const-string v2, ""

    if-eqz v1, :cond_41

    const-string v1, ", fastForward"

    goto :goto_42

    :cond_41
    move-object v1, v2

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", srcRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/YI;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Labcd/YI;->Zo:Z

    if-eqz v1, :cond_55

    const-string v2, ", forceUpdate"

    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/YI;->u7:Ljava/lang/String;

    if-eqz v1, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/YI;->u7:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    :cond_75
    const-string v1, "null"

    :goto_77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
