.class public Labcd/_B;
.super Labcd/NB;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unmergedPaths:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/NB;-><init>(Ljava/lang/String;)V

    return-void
.end method
