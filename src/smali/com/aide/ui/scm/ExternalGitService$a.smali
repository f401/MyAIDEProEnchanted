.class Lcom/aide/ui/scm/ExternalGitService$a;
.super Lcom/aide/ui/scm/wa$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ExternalGitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/ExternalGitService$a$a;
    }
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final EQ:Lcom/aide/ui/scm/ExternalGitService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private VH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x235f3f0cface6cbfL
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0xb978640f71e3cd7L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x350c399be230c0c0L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x623e29e27633d05L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x33dfac7301def10L
    .end annotation
.end field

.field private v5:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x1871063f6b64321fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x30707b0814eb66fL

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/ExternalGitService;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x76829139e21724f9L
    .end annotation

    const-wide v4, 0x14f6eed3a39353bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14f6eed3a39353bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->EQ:Lcom/aide/ui/scm/ExternalGitService;

    invoke-direct {p0}, Lcom/aide/ui/scm/wa$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->VH:Ljava/lang/Object;

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    sget-object v0, Labcd/pK;->j6:Labcd/pK;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/pK;->DW(Ljava/io/File;)Labcd/pK;

    new-instance v0, Lcom/aide/ui/scm/d;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/aide/ui/scm/d;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Labcd/QK;Lcom/aide/ui/scm/ExternalGitService;)V

    invoke-static {v0}, Labcd/QK;->j6(Labcd/QK;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Lcom/aide/ui/scm/xa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5208d05376628471L
    .end annotation

    const-wide v2, -0x45d3ce7ea7f55687L    # -1.7792524139635494E-28

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x45d3ce7ea7f55687L    # -1.7792524139635494E-28

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Lcom/aide/ui/scm/xa;->w9()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ExternalGitService$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    return v0
.end method

.method private j6(Lcom/aide/ui/scm/xa;)Labcd/kI;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa90c08f43318698L
    .end annotation

    const-wide v2, 0x34fda82e055619cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34fda82e055619cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/e;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/scm/e;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;Labcd/cB;Labcd/BB;Ljava/util/Map;)Lcom/aide/ui/scm/GitStatus;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x5cc4926c489a8814L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/cB;",
            "Labcd/BB;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/WH;",
            ">;)",
            "Lcom/aide/ui/scm/GitStatus;"
        }
    .end annotation

    const-wide v8, 0x2c326eb6af35eb00L    # 8.629488256715464E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c326eb6af35eb00L    # 8.629488256715464E-96

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Labcd/BB;->j6()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->DW()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->FH()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->Hw()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->v5()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->Zo()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->VH()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    new-instance v0, Lcom/aide/ui/scm/GitStatus;

    invoke-direct {v0, p1, v2}, Lcom/aide/ui/scm/GitStatus;-><init>(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ExternalGitService$a;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    return-object v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x37557a8f94795d0L
    .end annotation

    const-wide v2, -0x2a0e65c605e3e874L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a0e65c605e3e874L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in repository "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    move-object v5, p1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x669556f58e410525L
    .end annotation

    const-wide v2, -0x517981c949688437L    # -1.447301599357619E-84

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x517981c949688437L    # -1.447301599357619E-84

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/Throwable;II)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xbfb470d255696c1L
    .end annotation

    const-wide v8, -0x19241faa1a7fff1dL    # -3.0323031449121382E187

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x19241faa1a7fff1dL    # -3.0323031449121382E187

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/cB;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x10aa57b7924f531dL
    .end annotation

    const-wide v6, -0x36b2f93ad0c8ed9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36b2f93ad0c8ed9L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    new-instance v1, Labcd/qG;

    invoke-virtual {p1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {p1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    invoke-static {v1, p2, v0}, Labcd/YJ;->j6(Labcd/UE;Ljava/lang/String;Labcd/mG;)Labcd/YJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v0

    invoke-virtual {p1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Labcd/UE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0, p3}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Lcom/aide/ui/scm/GitConfiguration;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x23003bedd76faddL
    .end annotation

    const-wide v6, 0x5e9beb2070157a7L

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5e9beb2070157a7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->VH:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    const-string v1, ".ssh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    sget-object v0, Labcd/pK;->j6:Labcd/pK;

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/pK;->DW(Ljava/io/File;)Labcd/pK;

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_1
    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gitconfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_0
    monitor-exit v3

    return-void

    :cond_4
    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    iget-object v1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gitconfig"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "[user]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tname = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\temail = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->u7:Ljava/lang/String;

    iget-object v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->tp:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_7
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :goto_4
    :try_start_a
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x384626a1f6175L
    .end annotation

    const-wide v6, -0x272e8e5dd7b34e2dL    # -7.038196639125766E119

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x272e8e5dd7b34e2dL    # -7.038196639125766E119

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    instance-of v0, p3, Ljava/lang/OutOfMemoryError;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {p1}, Lcom/aide/ui/scm/xa;->hz()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OOM \u540e Git \u670d\u52a1\u8fdb\u7a0b\u7ec8\u6b62"

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    .line 4294967295
    :cond_3
    :try_start_4
    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    move-object v1, v0

    :goto_3
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " \u5931\u8d25: "

    :goto_4
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/aide/ui/scm/xa;->XL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 99
    :cond_4
    const-string v0, "Git service process killed after OOM"

    goto :goto_1

    :cond_5
    const-string v0, " failed: "

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_3
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x7707ea57ea77175L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x948cafad34239fL

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p5, :cond_2

    invoke-interface {p5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    new-instance v2, Lcom/aide/ui/scm/ModifiedFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p4}, Lcom/aide/ui/scm/ModifiedFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x3aaca4037d1b2e00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    const-wide v8, -0x60a62be8ec32898L    # -3.065185504729225E279

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x60a62be8ec32898L    # -3.065185504729225E279

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Labcd/cB;->j6()Labcd/OA;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v7

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->Zo()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->Hw()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    iget-object v0, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/OA;->j6(Ljava/lang/String;)Labcd/OA;

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Labcd/OA;->call()Labcd/KC;

    :cond_4
    invoke-direct {p0, p4}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v2}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Labcd/ZA;->DW(Z)Labcd/ZA;

    invoke-virtual {v1, p3}, Labcd/ZA;->j6(Ljava/lang/String;)Labcd/ZA;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v0, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/ZA;->DW(Ljava/lang/String;)Labcd/ZA;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_5

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_3
    invoke-virtual {v1}, Labcd/ZA;->call()Labcd/dG;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void
.end method

.method private v5(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x9ecdc0ce5eb69c8L
    .end annotation

    const-wide v6, -0x479e84dc9f5c0a80L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x479e84dc9f5c0a80L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    const-string v2, "remote"

    const-string v3, "origin"

    const-string v4, "url"

    invoke-virtual {v0, v2, v3, v4, p2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/jF;->v5()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Git \u63a8\u9001"

    :goto_1
    :try_start_5
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    const-string v1, "Git push"

    goto :goto_1
.end method


# virtual methods
.method public DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1f602f91d206c8e1L
    .end annotation

    const-wide v2, -0x6ed2756542db467L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6ed2756542db467L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->Ws()Labcd/CB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/CB;->call()Labcd/BB;

    move-result-object v0

    invoke-virtual {v1}, Labcd/cB;->QX()Labcd/EB;

    move-result-object v4

    invoke-virtual {v4}, Labcd/EB;->call()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Labcd/cB;Labcd/BB;Ljava/util/Map;)Lcom/aide/ui/scm/GitStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Git \u72b6\u6001"

    :goto_1
    :try_start_5
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const-string v1, "Git status"

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x191c87d6c528301bL
    .end annotation

    const-wide v6, -0x127d54db330ea2c5L    # -3.2950118815497504E219

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x127d54db330ea2c5L    # -3.2950118815497504E219

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getAvaCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "gitcontent"

    const-string v3, ".txt"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Labcd/cB;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Git \u83b7\u53d6\u57fa\u672c\u6587\u4ef6\u5185\u5bb9"

    :goto_1
    :try_start_9
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const-string v1, "Git get base file content"

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x53575c546c1a198L
    .end annotation

    const-wide v6, -0x3fb3585c8c2ffd80L    # -57.30967567116477

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3fb3585c8c2ffd80L    # -57.30967567116477

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Labcd/IB; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->J0()Labcd/qB;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    check-cast v0, Labcd/qB;

    new-instance v2, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v2, p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v0, v2}, Labcd/qB;->j6(Labcd/LE;)Labcd/qB;

    invoke-virtual {v0}, Labcd/qB;->call()Labcd/rB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rB;->DW()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v2

    invoke-virtual {v2}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v2

    sget-object v3, Labcd/pB$a;->v5:Labcd/pB$a;

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/pB;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-boolean v2, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_1
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Labcd/IB; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_0
    return-void

    :cond_2
    :try_start_5
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Labcd/rB;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    iget-boolean v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_4
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_6
    .catch Labcd/IB; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Git \u62c9\u53d6"

    :goto_1
    :try_start_8
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_5

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    const-string v1, "Git pull"

    goto :goto_1
.end method

.method public FH(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x219026d02d263f97L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x2b8b352e0a14bdb5L    # 6.219619325505456E-99

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b8b352e0a14bdb5L    # 6.219619325505456E-99

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    invoke-virtual {v4}, Labcd/cB;->Hw()Labcd/gB;

    move-result-object v0

    sget-object v1, Labcd/gB$a;->j6:Labcd/gB$a;

    invoke-virtual {v0, v1}, Labcd/gB;->j6(Labcd/gB$a;)Labcd/gB;

    invoke-virtual {v0}, Labcd/gB;->call()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Git \u83b7\u53d6\u5206\u652f"

    :goto_1
    :try_start_5
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    :try_start_6
    invoke-virtual {v4}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_2

    .line 99
    :cond_2
    const-string v1, "Git get branches"

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1cc4cc7a092a87b9L
    .end annotation

    const-wide v6, 0x2067fa96427ed4fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2067fa96427ed4fL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v2}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_1

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Git \u6821\u68c0\u5931\u8d25: "

    :goto_1
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Git \u6821\u9a8c"

    :goto_2
    :try_start_8
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    const-string v1, "Git checkout"

    goto :goto_2

    :cond_4
    const-string v0, "Git checkout failed: "

    goto :goto_1
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x421cf1ad2d31304L
    .end annotation

    const-wide v6, -0x115ce3910c317f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x115ce3910c317f0L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->FH()Labcd/aB;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Labcd/aB;->j6([Ljava/lang/String;)Labcd/aB;

    invoke-virtual {v0}, Labcd/aB;->call()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Git \u5220\u9664\u5206\u652f"

    :goto_1
    :try_start_5
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    const-string v1, "Git delete branch"

    goto :goto_1
.end method

.method public cancel()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4f3dab10f84e883L
    .end annotation

    const-wide v2, 0x9dfb9a293e17779L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9dfb9a293e17779L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe3776ea383068b0L
    .end annotation

    const-wide v2, -0x3b629a4a37e8e54cL    # -3.470621197489601E22

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b629a4a37e8e54cL    # -3.470621197489601E22

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->u7()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Git \u83b7\u53d6\u5206\u652f"

    :goto_1
    :try_start_5
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const-string v1, "Git get branches"

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x565b98691580059L
    .end annotation

    const-wide v8, -0x3ed265ee43573153L    # -969992.8684753977

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ed265ee43573153L    # -969992.8684753977

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Labcd/cB;->J8()Labcd/sB;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    check-cast v0, Labcd/sB;

    new-instance v1, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v1, p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v0, v1}, Labcd/sB;->j6(Labcd/LE;)Labcd/sB;

    invoke-virtual {v0}, Labcd/sB;->call()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/NI;

    invoke-virtual {v0}, Labcd/NI;->FH()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v5

    sget-object v6, Labcd/YI$a;->u7:Labcd/YI$a;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v5

    sget-object v6, Labcd/YI$a;->DW:Labcd/YI$a;

    if-eq v5, v6, :cond_2

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/zI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Status: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-boolean v1, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_3
    invoke-virtual {v2}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Labcd/hD;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "\u8bf7\u6307\u5b9a\u4e00\u4e2a\u6709\u6548\u7684\u8fdc\u7a0b\u5b58\u50a8\u5e93 url\uff1a"

    :goto_0
    :try_start_5
    invoke-interface {p3, v0}, Lcom/aide/ui/scm/xa;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, v0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->v5(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_6
    iget-boolean v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_6
    invoke-virtual {v2}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Git \u63a8\u9001"

    :goto_2
    :try_start_8
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_8

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    const-string v1, "Git push"

    goto :goto_2

    :cond_a
    const-string v0, "Please specifiy a valid remote repository url:"

    goto :goto_0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xf0d209d23eeec40L
    .end annotation

    const-wide v8, -0x12a70d9674eb3e68L    # -5.503942083872478E218

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12a70d9674eb3e68L    # -5.503942083872478E218

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    invoke-static {}, Labcd/cB;->VH()Labcd/XA;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/XA;->j6(Ljava/io/File;)Labcd/XA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/XA;->DW(Z)Labcd/XA;

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    check-cast v0, Labcd/XA;

    new-instance v1, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v1, p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v0, v1}, Labcd/XA;->j6(Labcd/LE;)Labcd/XA;

    invoke-virtual {v0, p4}, Labcd/XA;->j6(Ljava/lang/String;)Labcd/XA;

    invoke-virtual {v0}, Labcd/XA;->call()Labcd/cB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Git \u514b\u9686"

    :goto_1
    :try_start_4
    invoke-direct {p0, p5, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-boolean v0, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "Git clone"

    goto :goto_1

    .line 4294967295
    :catchall_0
    move-exception v0

    .line 99
    :try_start_6
    iget-boolean v1, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_3
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_4

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2dbe3f55cb757745L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    const-wide v8, -0x19c190de36ae691L    # -6.664157986825507E300

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19c190de36ae691L    # -6.664157986825507E300

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Labcd/IG;

    new-instance v1, Ljava/io/File;

    const-string v2, ".git"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Labcd/IG;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Labcd/UE;->DW()V

    invoke-virtual {v0}, Labcd/UE;->j6()V

    new-instance v1, Ljava/io/FileWriter;

    new-instance v0, Ljava/io/File;

    const-string v2, ".gitignore"

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Git \u521b\u5efa"

    :goto_1
    :try_start_3
    invoke-direct {p0, p5, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    invoke-virtual {p0, p2, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;

    move-result-object v0

    iget-object v1, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    invoke-direct {p0, p2, v0, p3, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    :cond_2
    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 99
    :cond_3
    const-string v1, "Git create"

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_4

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5056728e14d591a0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    const-wide v8, 0x4f43c2006dcbe90L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f43c2006dcbe90L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Git \u63d0\u4ea4"

    :goto_1
    :try_start_3
    invoke-direct {p0, p5, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    const-string v1, "Git commit"

    goto :goto_1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x23f763aebd3639f3L
    .end annotation

    const-wide v6, 0x59b3bd5cc720ced3L    # 1.3049044476071919E124

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x59b3bd5cc720ced3L    # 1.3049044476071919E124

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->we()Labcd/iB;

    move-result-object v0

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/iB;->j6(Labcd/YD;)Labcd/iB;

    invoke-virtual {v0}, Labcd/iB;->call()Labcd/pB;

    move-result-object v2

    invoke-virtual {v2}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v0

    sget-object v3, Labcd/pB$a;->FH:Labcd/pB$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v3, :cond_1

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Git \u5408\u5e76\u5931\u8d25: "

    :goto_1
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Git \u5408\u5e76"

    :goto_2
    :try_start_8
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    .line 99
    :cond_3
    const-string v1, "Git merge"

    goto :goto_2

    .line 98
    :cond_4
    const-string v0, "Git merge failed: "

    goto :goto_1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x46fd724c38ce8b00L
    .end annotation

    const-wide v8, -0x3bc42835db247f30L    # -5.136113711787855E20

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bc42835db247f30L    # -5.136113711787855E20

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->DW()Labcd/_A;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/_A;->j6(Ljava/lang/String;)Labcd/_A;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Labcd/_A;->DW(Ljava/lang/String;)Labcd/_A;

    sget-object v2, Labcd/_A$a;->j6:Labcd/_A$a;

    invoke-virtual {v0, v2}, Labcd/_A;->j6(Labcd/_A$a;)Labcd/_A;

    :cond_1
    invoke-virtual {v0}, Labcd/_A;->call()Labcd/ME;

    invoke-virtual {v1}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v2}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_2

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :cond_2
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Git \u6821\u68c0\u5931\u8d25: "

    :goto_1
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Git \u6821\u9a8c"

    :goto_2
    :try_start_8
    invoke-direct {p0, p4, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_3

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    .line 99
    :cond_4
    const-string v1, "Git checkout"

    goto :goto_2

    .line 98
    :cond_5
    const-string v0, "Git checkout failed: "

    goto :goto_1
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6c65f6322b4a54bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x1c9caf24b59a0d55L    # 7.422402737681194E-171

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c9caf24b59a0d55L    # 7.422402737681194E-171

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Labcd/QA;->DW(Z)Labcd/QA;

    const-string v0, "HEAD"

    invoke-virtual {v2, v0}, Labcd/QA;->FH(Ljava/lang/String;)Labcd/QA;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v0, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/QA;->j6(Ljava/lang/String;)Labcd/QA;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Git \u4e22\u5f03"

    :goto_1
    :try_start_5
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_6
    invoke-virtual {v2}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;

    if-ne v0, v3, :cond_6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :try_start_7
    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :cond_5
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Git \u6821\u68c0\u5931\u8d25: "

    :goto_3
    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 99
    :cond_7
    const-string v1, "Git discard"

    goto/16 :goto_1

    :cond_8
    const-string v0, "Git checkout failed: "

    goto :goto_3

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v0, :cond_9

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method
