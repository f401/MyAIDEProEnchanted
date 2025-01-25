.class public Labcd/AD;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unpackException:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
