.class public Labcd/LB;
.super Labcd/NB;


# instance fields
.field private DW:Labcd/ME;

.field private j6:Labcd/RE$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V
    .registers 8

    if-nez p3, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Labcd/NB;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Labcd/LB;->j6:Labcd/RE$a;

    iput-object p2, p0, Labcd/LB;->DW:Labcd/ME;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refUpdateReturnCodeWas:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
