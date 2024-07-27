.class public Labcd/ZC;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Labcd/yE;I)V
    .registers 4

    invoke-static {p2}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Labcd/yE;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->objectIsNotA:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
