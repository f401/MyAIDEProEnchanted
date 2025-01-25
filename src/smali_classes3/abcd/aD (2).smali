.class public Labcd/aD;
.super Ljava/lang/IllegalArgumentException;


# direct methods
.method public constructor <init>([BII)V
    .registers 7

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Labcd/aD;->j6([BII)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static j6([BII)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_19

    :catch_18
    move-exception p0

    :goto_19
    const-string p0, ""

    return-object p0
.end method
