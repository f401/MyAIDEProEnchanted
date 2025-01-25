.class public Labcd/LB;
.super Labcd/NB;


# instance fields
.field private DW:Labcd/ME;

.field private j6:Labcd/RE$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V
    .registers 7

    if-nez p3, :cond_3

    goto :goto_28

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->refUpdateReturnCodeWas:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_28
    invoke-direct {p0, p1}, Labcd/NB;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Labcd/LB;->j6:Labcd/RE$a;

    iput-object p2, p0, Labcd/LB;->DW:Labcd/ME;

    return-void
.end method
