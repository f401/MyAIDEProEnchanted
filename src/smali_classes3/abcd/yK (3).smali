.class Labcd/yK;
.super Labcd/vK;


# static fields
.field private static Hw:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/vK;-><init>()V

    return-void
.end method

.method static u7()Z
    .registers 5

    new-instance v0, Labcd/wK;

    invoke-direct {v0}, Labcd/wK;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cygpath.exe"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Labcd/pK;->DW(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/yK;->Hw:Ljava/lang/String;

    :cond_22
    sget-object v0, Labcd/yK;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_27

    return v2

    :cond_27
    return v1
.end method


# virtual methods
.method protected VH()Ljava/io/File;
    .registers 4

    new-instance v0, Labcd/xK;

    invoke-direct {v0, p0}, Labcd/xK;-><init>(Labcd/yK;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_20

    :cond_14
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Labcd/yK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_20
    :goto_20
    invoke-super {p0}, Labcd/vK;->VH()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const-string v0, "jgit.usecygpath"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Labcd/yK;->Hw:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--windows"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--absolute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Labcd/pK;->j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_33
    invoke-super {p0, p1, p2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "sh.exe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "-c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \"$@\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
