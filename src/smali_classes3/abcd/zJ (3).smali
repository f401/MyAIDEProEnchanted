.class Labcd/zJ;
.super Labcd/jJ;

# interfaces
.implements Labcd/BI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/zJ$a;,
        Labcd/zJ$b;,
        Labcd/zJ$c;,
        Labcd/zJ$d;
    }
.end annotation


# static fields
.field static final Mr:Labcd/DJ;


# instance fields
.field private final U2:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/yJ;

    invoke-direct {v0}, Labcd/yJ;-><init>()V

    sput-object v0, Labcd/zJ;->Mr:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/jJ;-><init>(Labcd/UE;Labcd/HJ;)V

    iput-object p3, p0, Labcd/zJ;->U2:Ljava/io/File;

    return-void
.end method

.method static synthetic j6(Labcd/zJ;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Labcd/zJ;->U2:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method DW(Labcd/UE;)Labcd/IJ;
    .registers 3

    new-instance v0, Labcd/IJ;

    invoke-direct {v0, p1}, Labcd/IJ;-><init>(Labcd/UE;)V

    return-object v0
.end method

.method public DW()V
    .registers 1

    return-void
.end method

.method protected FH(Ljava/lang/String;)Ljava/lang/Process;
    .registers 6

    :try_start_0
    iget-object v0, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Labcd/pK;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object p1

    iget-object v0, p0, Labcd/zJ;->U2:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    const-string v1, "GIT_ALTERNATE_OBJECT_DIRECTORIES"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_CONFIG"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_CONFIG_PARAMETERS"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_DIR"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_WORK_TREE"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_GRAFT_FILE"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_INDEX_FILE"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GIT_NO_REPLACE_OBJECTS"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_48

    return-object p1

    :catch_48
    move-exception p1

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public QX()Labcd/nI;
    .registers 3

    invoke-virtual {p0}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-upload-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "git upload-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance v0, Labcd/zJ$a;

    invoke-direct {v0, p0}, Labcd/zJ$a;-><init>(Labcd/zJ;)V

    return-object v0

    :cond_1b
    :goto_1b
    new-instance v0, Labcd/zJ$c;

    invoke-direct {v0, p0}, Labcd/zJ$c;-><init>(Labcd/zJ;)V

    return-object v0
.end method

.method public XL()Labcd/LI;
    .registers 3

    invoke-virtual {p0}, Labcd/jJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-receive-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "git receive-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance v0, Labcd/zJ$b;

    invoke-direct {v0, p0}, Labcd/zJ$b;-><init>(Labcd/zJ;)V

    return-object v0

    :cond_1b
    :goto_1b
    new-instance v0, Labcd/zJ$d;

    invoke-direct {v0, p0}, Labcd/zJ$d;-><init>(Labcd/zJ;)V

    return-object v0
.end method

.method j6(Labcd/UE;)Labcd/SI;
    .registers 3

    new-instance v0, Labcd/SI;

    invoke-direct {v0, p1}, Labcd/SI;-><init>(Labcd/UE;)V

    return-object v0
.end method
