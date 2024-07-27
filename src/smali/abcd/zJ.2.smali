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
    .registers 2

    iget-object v0, p0, Labcd/zJ;->U2:Ljava/io/File;

    return-object v0
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

    const/4 v2, 0x0

    const-string v3, "."

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Labcd/pK;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    iget-object v1, p0, Labcd/zJ;->U2:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v1

    const-string v2, "GIT_ALTERNATE_OBJECT_DIRECTORIES"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_CONFIG"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_CONFIG_PARAMETERS"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_DIR"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_WORK_TREE"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_GRAFT_FILE"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_INDEX_FILE"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GIT_NO_REPLACE_OBJECTS"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public QX()Labcd/nI;
    .registers 3

    invoke-virtual {p0}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-upload-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "git upload-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Labcd/zJ$c;

    invoke-direct {v0, p0}, Labcd/zJ$c;-><init>(Labcd/zJ;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/zJ$a;

    invoke-direct {v0, p0}, Labcd/zJ$a;-><init>(Labcd/zJ;)V

    goto :goto_0
.end method

.method public XL()Labcd/LI;
    .registers 3

    invoke-virtual {p0}, Labcd/jJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-receive-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "git receive-pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Labcd/zJ$d;

    invoke-direct {v0, p0}, Labcd/zJ$d;-><init>(Labcd/zJ;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/zJ$b;

    invoke-direct {v0, p0}, Labcd/zJ$b;-><init>(Labcd/zJ;)V

    goto :goto_0
.end method

.method j6(Labcd/UE;)Labcd/SI;
    .registers 3

    new-instance v0, Labcd/SI;

    invoke-direct {v0, p1}, Labcd/SI;-><init>(Labcd/UE;)V

    return-object v0
.end method
