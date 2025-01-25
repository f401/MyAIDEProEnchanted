.class public abstract Labcd/bH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bH$a;,
        Labcd/bH$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Labcd/bH$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected j6:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Ljava/io/File;)Labcd/bH;
    .registers 7

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-static {v0}, Labcd/bH;->j6(Ljava/io/InputStream;)Labcd/bH;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_11
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_2f

    :catch_11
    move-exception v1

    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unreadablePackIndex:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_f

    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v0

    :goto_34
    throw p0
.end method

.method public static j6(Ljava/io/InputStream;)Labcd/bH;
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v1}, Labcd/bH;->j6([B)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x4

    invoke-static {v1, v0}, Labcd/FK;->j6([BI)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    new-instance v0, Labcd/fH;

    invoke-direct {v0, p0}, Labcd/fH;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1c
    new-instance p0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackIndexVersion:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    new-instance v0, Labcd/dH;

    invoke-direct {v0, p0, v1}, Labcd/dH;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method private static j6([B)Z
    .registers 6

    sget-object v0, Labcd/gH;->j6:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v3, v0

    if-lt v2, v3, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    aget-byte v3, p0, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method


# virtual methods
.method public abstract DW()J
.end method

.method public abstract DW(Labcd/YD;)J
.end method

.method public abstract FH()Z
.end method

.method public FH(Labcd/YD;)Z
    .registers 6

    invoke-virtual {p0, p1}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/bH$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j6()J
.end method

.method public abstract j6(Labcd/YD;)J
.end method

.method public abstract j6(J)Labcd/yE;
.end method

.method public abstract j6(Ljava/util/Set;Labcd/WD;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation
.end method

.method public final v5(I)Labcd/yE;
    .registers 6

    if-ltz p1, :cond_8

    int-to-long v0, p1

    :goto_3
    invoke-virtual {p0, v0, v1}, Labcd/bH;->j6(J)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_8
    ushr-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    and-int/2addr p1, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    goto :goto_3
.end method
