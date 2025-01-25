.class public Labcd/MB;
.super Labcd/NB;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->detachedHeadDetected:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/MB;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/NB;-><init>(Ljava/lang/String;)V

    return-void
.end method
