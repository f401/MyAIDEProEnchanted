.class public Labcd/zK;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/io/File;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/zK;->j6(Ljava/io/File;Z)V

    return-void
.end method

.method public static DW(Ljava/io/File;Z)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->mkDirsFailed:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    return-void
.end method

.method public static FH(Ljava/io/File;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/zK;->DW(Ljava/io/File;Z)V

    return-void
.end method

.method public static j6(Ljava/io/File;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/zK;->j6(Ljava/io/File;I)V

    return-void
.end method

.method public static j6(Ljava/io/File;I)V
    .registers 7

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_29

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1e
    if-lt v3, v2, :cond_21

    goto :goto_29

    :cond_21
    aget-object v4, v0, v3

    invoke-static {v4, p1}, Labcd/zK;->j6(Ljava/io/File;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_29
    :goto_29
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_68

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    :goto_3b
    const/16 v2, 0xa

    if-ge p1, v2, :cond_50

    const-wide/16 v2, 0x64

    :try_start_41
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move-exception v2

    :goto_46
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4d

    return-void

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_3b

    :cond_50
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->deleteFileFailed:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    return-void
.end method

.method public static j6(Ljava/io/File;Z)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->mkDirFailed:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    return-void
.end method
