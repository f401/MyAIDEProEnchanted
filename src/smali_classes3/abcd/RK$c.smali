.class public Labcd/RK$c;
.super Labcd/RK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/RK;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Hw()Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->inMemoryBufferLimitExceeded:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
