.class Labcd/vK;
.super Labcd/pK;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/pK;-><init>()V

    return-void
.end method

.method static gn()Z
    .registers 2

    new-instance v0, Labcd/uK;

    invoke-direct {v0}, Labcd/uK;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Labcd/NK;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected DW()Ljava/io/File;
    .registers 8

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "PATH"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "git.exe"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "git.cmd"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Labcd/pK;->DW(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    :goto_1d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-virtual {p0}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "bash"

    aput-object v6, v3, v4

    const-string v4, "--login"

    aput-object v4, v3, v5

    const-string v4, "-c"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "which git"

    aput-object v4, v3, v1

    invoke-static {v0, v3, v2}, Labcd/pK;->j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {p0, v1, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_54

    goto :goto_1d

    :cond_54
    return-object v1
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected VH()Ljava/io/File;
    .registers 5

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "HOMEDRIVE"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/io/File;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v2

    const-string v3, "HOMEPATH"

    invoke-virtual {v2, v3}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2e
    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "HOMESHARE"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_40
    invoke-super {p0}, Labcd/pK;->VH()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "cmd.exe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/ProcessBuilder;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    return-object p1
.end method

.method public j6(Ljava/io/File;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public j6(Ljava/io/File;Z)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
