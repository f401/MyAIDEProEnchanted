.class public Labcd/qD;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->walkFailure:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
