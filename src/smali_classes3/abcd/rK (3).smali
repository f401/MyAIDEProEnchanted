.class abstract Labcd/rK;
.super Labcd/pK;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/pK;-><init>()V

    return-void
.end method

.method private static gn()Z
    .registers 2

    new-instance v0, Labcd/qK;

    invoke-direct {v0}, Labcd/qK;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Mac OS X"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "git"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Labcd/pK;->DW(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {}, Labcd/rK;->gn()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "bash"

    aput-object v6, v5, v4

    const-string v4, "--login"

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-string v4, "-c"

    aput-object v4, v5, v1

    const/4 v1, 0x3

    const-string v4, "which git"

    aput-object v4, v5, v1

    invoke-static {v0, v5, v3}, Labcd/pK;->j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_56

    goto :goto_67

    :cond_56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_62

    return-object v2

    :cond_62
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_67
    :goto_67
    return-object v2
.end method

.method public j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "sh"

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
