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
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$a;

    const-wide v1, 0x30707b0814eb66fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/ExternalGitService;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x76829139e21724f9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14f6eed3a39353bL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$a;->EQ:Lcom/aide/ui/scm/ExternalGitService;

    invoke-direct {p0}, Lcom/aide/ui/scm/wa$a;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->VH:Ljava/lang/Object;

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    sget-object v3, Labcd/pK;->j6:Labcd/pK;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Labcd/pK;->DW(Ljava/io/File;)Labcd/pK;

    new-instance v3, Lcom/aide/ui/scm/d;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/aide/ui/scm/d;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Labcd/QK;Lcom/aide/ui/scm/ExternalGitService;)V

    invoke-static {v3}, Labcd/QK;->j6(Labcd/QK;)V
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v4, :cond_47

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v3
.end method

.method private DW(Lcom/aide/ui/scm/xa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5208d05376628471L
    .end annotation

    const-wide v0, -0x45d3ce7ea7f55687L  # -1.7792524139635494E-28

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    :try_start_f
    iget-boolean v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_22

    :try_start_17
    invoke-interface {p1}, Lcom/aide/ui/scm/xa;->w9()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    goto :goto_1f

    :catch_1b
    move-exception v2

    :try_start_1c
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_25

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    monitor-exit v2

    return-void

    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ExternalGitService$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    return p0
.end method

.method private j6(Lcom/aide/ui/scm/xa;)Labcd/kI;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa90c08f43318698L
    .end annotation

    const-wide v0, 0x34fda82e055619cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/e;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/scm/e;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private j6(Ljava/lang/String;Labcd/cB;Labcd/BB;Ljava/util/Map;)Lcom/aide/ui/scm/GitStatus;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x5cc4926c489a8814L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/cB;",
            "Labcd/BB;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/WH;",
            ">;)",
            "Lcom/aide/ui/scm/GitStatus;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x2c326eb6af35eb00L  # 8.629488256715464E-96

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Labcd/BB;->j6()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->DW()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->FH()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->Hw()Ljava/util/Set;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->v5()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->Zo()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    invoke-virtual {p3}, Labcd/BB;->VH()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V

    new-instance v0, Lcom/aide/ui/scm/GitStatus;

    invoke-direct {v0, p1, v10}, Lcom/aide/ui/scm/GitStatus;-><init>(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_7d
    .catchall {:try_start_0 .. :try_end_7d} :catchall_7e

    return-object v0

    :catchall_7e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_91

    const-wide v2, 0x2c326eb6af35eb00L  # 8.629488256715464E-96

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_91
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ExternalGitService$a;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x37557a8f94795d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2a0e65c605e3e874L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_25
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not in repository "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    move-object v5, p1

    sget-boolean p1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz p1, :cond_5f

    const-wide v2, -0x2a0e65c605e3e874L

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method private j6(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x669556f58e410525L
    .end annotation

    const-wide v0, -0x517981c949688437L  # -1.447301599357619E-84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {p0, p1, v2, v3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;II)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object p1

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private j6(Ljava/lang/Throwable;II)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xbfb470d255696c1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x19241faa1a7fff1dL  # -3.0323031449121382E187

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    if-ge p2, p3, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    return-object v0

    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x19241faa1a7fff1dL  # -3.0323031449121382E187

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method private j6(Labcd/cB;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x10aa57b7924f531dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x36b2f93ad0c8ed9L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
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

    move-result-object v0
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_51

    :try_start_45
    invoke-static {v0, p3}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4c

    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_4c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_63

    const-wide v2, -0x36b2f93ad0c8ed9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method private j6(Lcom/aide/ui/scm/GitConfiguration;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x23003bedd76faddL
    .end annotation

    const-wide v0, 0x5e9beb2070157a7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a;->VH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10c

    :try_start_f
    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_46

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    const-string v5, ".ssh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    iget-object v5, p1, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    iput-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    sget-object v3, Labcd/pK;->j6:Labcd/pK;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/aide/ui/scm/ExternalGitService$a;->gn:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Labcd/pK;->DW(Ljava/io/File;)Labcd/pK;

    invoke-static {v4}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_46
    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    if-eqz v3, :cond_f9

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_f9

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_60

    goto/16 :goto_f9

    :cond_60
    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/ExternalGitService$a;->u7:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v3, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/ExternalGitService$a;->tp:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_72
    .catchall {:try_start_f .. :try_end_72} :catchall_109

    if-nez v3, :cond_107

    :cond_74
    :try_start_74
    new-instance v3, Ljava/io/FileWriter;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".gitconfig"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_84} :catch_d9
    .catchall {:try_start_74 .. :try_end_84} :catchall_d7

    :try_start_84
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "[user]"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\temail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    iput-object v4, p0, Lcom/aide/ui/scm/ExternalGitService$a;->u7:Ljava/lang/String;

    iget-object v4, p1, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    iput-object v4, p0, Lcom/aide/ui/scm/ExternalGitService$a;->tp:Ljava/lang/String;
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_ca} :catch_d2
    .catchall {:try_start_84 .. :try_end_ca} :catchall_d0

    :try_start_ca
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce
    .catchall {:try_start_ca .. :try_end_cd} :catchall_109

    goto :goto_107

    :catch_ce
    move-exception v3

    goto :goto_e3

    :catchall_d0
    move-exception v4

    goto :goto_eb

    :catch_d2
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_da

    :catchall_d7
    move-exception v3

    goto :goto_ee

    :catch_d9
    move-exception v3

    :goto_da
    :try_start_da
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_e7

    if-eqz v4, :cond_107

    :try_start_df
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_ce
    .catchall {:try_start_df .. :try_end_e2} :catchall_109

    goto :goto_107

    :goto_e3
    :try_start_e3
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_109

    goto :goto_107

    :catchall_e7
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_eb
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_ee
    if-eqz v4, :cond_f8

    :try_start_f0
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_109

    goto :goto_f8

    :catch_f4
    move-exception v4

    :try_start_f5
    invoke-static {v4}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_f8
    :goto_f8
    throw v3

    :cond_f9
    :goto_f9
    new-instance v3, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gitconfig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_107
    :goto_107
    monitor-exit v2

    return-void

    :catchall_109
    move-exception v3

    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_f5 .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v3
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10c

    :catchall_10c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v3, :cond_114

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_114
    throw v2
.end method

.method private j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x384626a1f6175L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x272e8e5dd7b34e2dL  # -7.038196639125766E119

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_64

    instance-of v0, p3, Ljava/lang/OutOfMemoryError;
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_65

    if-eqz v0, :cond_37

    :try_start_19
    invoke-interface {p1}, Lcom/aide/ui/scm/xa;->hz()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_65

    goto :goto_21

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_21
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_65

    if-eqz v0, :cond_2a

    const-string v0, "OOM 后 Git 服务进程终止"

    goto :goto_2c

    .line 99
    :cond_2a
    const-string v0, "Git service process killed after OOM"

    .line 0
    :goto_2c
    :try_start_2c
    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_65

    goto :goto_64

    :cond_37
    :try_start_37
    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3b} :catch_60
    .catchall {:try_start_37 .. :try_end_3b} :catchall_65

    if-nez v0, :cond_3f

    const-string v0, ""

    :cond_3f
    :try_start_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4b} :catch_60
    .catchall {:try_start_3f .. :try_end_4b} :catchall_65

    if-eqz v2, :cond_50

    const-string v2, " 失败: "

    goto :goto_52

    .line 99
    :cond_50
    const-string v2, " failed: "

    .line 0
    :goto_52
    :try_start_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/aide/ui/scm/xa;->XL(Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5f} :catch_60
    .catchall {:try_start_52 .. :try_end_5f} :catchall_65

    goto :goto_64

    :catch_60
    move-exception v0

    :try_start_61
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    :cond_64
    :goto_64
    return-void

    .line 99
    :catchall_65
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_77

    const-wide v2, -0x272e8e5dd7b34e2dL  # -7.038196639125766E119

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;ILjava/util/Set;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7707ea57ea77175L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p6, 0x5

    aput-object v1, v0, p6

    const-wide v1, -0x948cafad34239fL

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2b
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2f
    :goto_2f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    if-eqz p5, :cond_43

    invoke-interface {p5, p6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_43
    new-instance v0, Lcom/aide/ui/scm/ModifiedFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p6

    invoke-direct {v0, p6, p4}, Lcom/aide/ui/scm/ModifiedFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_55
    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3aaca4037d1b2e00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x60a62be8ec32898L  # -3.065185504729225E279

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_93

    :try_start_1a
    invoke-virtual {v0}, Labcd/cB;->j6()Labcd/OA;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v5}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v5}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v5}, Lcom/aide/ui/scm/ModifiedFile;->Zo()Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v5}, Lcom/aide/ui/scm/ModifiedFile;->Hw()Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_48
    iget-object v4, v5, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/OA;->j6(Ljava/lang/String;)Labcd/OA;

    const/4 v4, 0x1

    goto :goto_24

    :cond_53
    if-eqz v4, :cond_58

    invoke-virtual {v1}, Labcd/OA;->call()Labcd/KC;

    :cond_58
    invoke-direct {p0, p4}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v0}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/ZA;->DW(Z)Labcd/ZA;

    invoke-virtual {v1, p3}, Labcd/ZA;->j6(Ljava/lang/String;)Labcd/ZA;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v3, v3, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/ZA;->DW(Ljava/lang/String;)Labcd/ZA;

    goto :goto_69

    :cond_7f
    invoke-virtual {v1}, Labcd/ZA;->call()Labcd/dG;
    :try_end_82
    .catchall {:try_start_1a .. :try_end_82} :catchall_8a

    :try_start_82
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-void

    :catchall_8a
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_93
    .catchall {:try_start_82 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_a6

    const-wide v2, -0x60a62be8ec32898L  # -3.065185504729225E279

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a6
    goto :goto_a8

    :goto_a7
    throw v0

    :goto_a8
    goto :goto_a7
.end method

.method private v5(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x9ecdc0ce5eb69c8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x479e84dc9f5c0a80L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_4e

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_3e

    :try_start_19
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v2, "remote"

    const-string v3, "origin"

    const-string v4, "url"

    invoke-virtual {v1, v2, v3, v4, p2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/jF;->v5()V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_35

    :try_start_2d
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    goto :goto_4d

    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_4e

    if-eqz v1, :cond_48

    const-string v1, "Git 推送"

    goto :goto_4a

    .line 99
    :cond_48
    const-string v1, "Git push"

    .line 0
    :goto_4a
    :try_start_4a
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    :goto_4d
    return-void

    .line 99
    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_60

    const-wide v2, -0x479e84dc9f5c0a80L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1f602f91d206c8e1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6ed2756542db467L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_4e

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3d

    :try_start_15
    invoke-virtual {v0}, Labcd/cB;->Ws()Labcd/CB;

    move-result-object v1

    invoke-virtual {v1}, Labcd/CB;->call()Labcd/BB;

    move-result-object v1

    invoke-virtual {v0}, Labcd/cB;->QX()Labcd/EB;

    move-result-object v2

    invoke-virtual {v2}, Labcd/EB;->call()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Labcd/cB;Labcd/BB;Ljava/util/Map;)Lcom/aide/ui/scm/GitStatus;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_34

    :try_start_2c
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-object v1

    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    :try_start_3e
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_4e

    if-eqz v1, :cond_47

    const-string v1, "Git 状态"

    goto :goto_49

    .line 99
    :cond_47
    const-string v1, "Git status"

    .line 0
    :goto_49
    :try_start_49
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x6ed2756542db467L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x191c87d6c528301bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x127d54db330ea2c5L  # -3.2950118815497504E219

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_67

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_56

    :try_start_19
    new-instance v1, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getAvaCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "gitcontent"

    const-string v3, ".txt"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_4d

    :try_start_2f
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Labcd/cB;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_48

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_4d

    :try_start_40
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_56

    return-object v1

    :catchall_48
    move-exception v1

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v1

    :try_start_4e
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_67

    if-eqz v1, :cond_60

    const-string v1, "Git 获取基本文件内容"

    goto :goto_62

    .line 99
    :cond_60
    const-string v1, "Git get base file content"

    .line 0
    :goto_62
    :try_start_62
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_67

    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_67
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_79

    const-wide v2, -0x127d54db330ea2c5L  # -3.2950118815497504E219

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method

.method public DW(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x53575c546c1a198L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3fb3585c8c2ffd80L  # -57.30967567116477

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_9e

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_1c
    .catch Labcd/IB; {:try_start_10 .. :try_end_1c} :catch_99
    .catchall {:try_start_10 .. :try_end_1c} :catchall_89

    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {v0}, Labcd/cB;->J0()Labcd/qB;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    move-object v3, v2

    check-cast v3, Labcd/qB;

    new-instance v3, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v3, p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v2, v3}, Labcd/qB;->j6(Labcd/LE;)Labcd/qB;

    invoke-virtual {v2}, Labcd/qB;->call()Labcd/rB;

    move-result-object v2

    invoke-virtual {v2}, Labcd/rB;->DW()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {v2}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v3

    invoke-virtual {v3}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v3

    sget-object v4, Labcd/pB$a;->v5:Labcd/pB$a;

    if-ne v3, v4, :cond_5d

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Labcd/rB;->j6()Labcd/pB;

    move-result-object v2

    invoke-virtual {v2}, Labcd/pB;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Labcd/rB;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_67
    .catchall {:try_start_1d .. :try_end_67} :catchall_79

    :cond_67
    :try_start_67
    iget-boolean v2, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v2, :cond_6e

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_6e
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    goto :goto_9d

    :catchall_79
    move-exception v2

    iget-boolean v3, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v3, :cond_81

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_81
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v2
    :try_end_89
    .catch Labcd/IB; {:try_start_67 .. :try_end_89} :catch_99
    .catchall {:try_start_67 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v0

    :try_start_8a
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9e

    if-eqz v1, :cond_93

    const-string v1, "Git 拉取"

    goto :goto_95

    .line 99
    :cond_93
    const-string v1, "Git pull"

    .line 0
    :goto_95
    :try_start_95
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9d

    :catch_99
    move-exception v0

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_9e

    :goto_9d
    return-void

    .line 99
    :catchall_9e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_b0

    const-wide v2, -0x3fb3585c8c2ffd80L  # -57.30967567116477

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    throw v0
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2b8b352e0a14bdb5L  # 6.219619325505456E-99

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_61

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_50

    :try_start_15
    invoke-virtual {v0}, Labcd/cB;->Hw()Labcd/gB;

    move-result-object v1

    sget-object v2, Labcd/gB$a;->j6:Labcd/gB$a;

    invoke-virtual {v1, v2}, Labcd/gB;->j6(Labcd/gB$a;)Labcd/gB;

    invoke-virtual {v1}, Labcd/gB;->call()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_47

    goto :goto_2b

    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-object v2

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    :try_start_51
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_61

    if-eqz v1, :cond_5a

    const-string v1, "Git 获取分支"

    goto :goto_5c

    .line 99
    :cond_5a
    const-string v1, "Git get branches"

    .line 0
    :goto_5c
    :try_start_5c
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_61

    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_61
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_72

    const-wide v2, 0x2b8b352e0a14bdb5L  # 6.219619325505456E-99

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v0

    :goto_74
    goto :goto_73
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1cc4cc7a092a87b9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2067fa96427ed4fL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_78

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_68

    :try_start_19
    invoke-virtual {v0}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v1}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v2

    invoke-virtual {v2}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v2

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_5f

    if-ne v2, v3, :cond_37

    :try_start_2f
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_68

    goto :goto_77

    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_5f

    if-eqz v4, :cond_47

    const-string v4, "Git 校检失败: "

    goto :goto_49

    .line 99
    :cond_47
    const-string v4, "Git checkout failed: "

    .line 0
    :goto_49
    :try_start_49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v1

    invoke-virtual {v1}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v1

    :try_start_60
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_78

    if-eqz v1, :cond_72

    const-string v1, "Git 校验"

    goto :goto_74

    .line 99
    :cond_72
    const-string v1, "Git checkout"

    .line 0
    :goto_74
    :try_start_74
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    :goto_77
    return-void

    .line 99
    :catchall_78
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_8a

    const-wide v2, 0x2067fa96427ed4fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    throw v0
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x421cf1ad2d31304L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x115ce3910c317f0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_4a

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_3a

    :try_start_19
    invoke-virtual {v0}, Labcd/cB;->FH()Labcd/aB;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Labcd/aB;->j6([Ljava/lang/String;)Labcd/aB;

    invoke-virtual {v1}, Labcd/aB;->call()Ljava/util/List;
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_31

    :try_start_29
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    goto :goto_49

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_4a

    if-eqz v1, :cond_44

    const-string v1, "Git 删除分支"

    goto :goto_46

    .line 99
    :cond_44
    const-string v1, "Git delete branch"

    .line 0
    :goto_46
    :try_start_46
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    :goto_49
    return-void

    .line 99
    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x115ce3910c317f0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v0
.end method

.method public cancel()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4f3dab10f84e883L
    .end annotation

    const-wide v0, 0x9dfb9a293e17779L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a;->v5:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_17

    const/4 v3, 0x1

    :try_start_10
    iput-boolean v3, p0, Lcom/aide/ui/scm/ExternalGitService$a;->Zo:Z

    monitor-exit v2

    return-void

    :catchall_14
    move-exception v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe3776ea383068b0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3b629a4a37e8e54cL  # -3.470621197489601E22

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_3f

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2e

    :try_start_15
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->u7()Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_25

    :try_start_1d
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-object v1

    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_3f

    if-eqz v1, :cond_38

    const-string v1, "Git 获取分支"

    goto :goto_3a

    .line 99
    :cond_38
    const-string v1, "Git get branches"

    .line 0
    :goto_3a
    :try_start_3a
    invoke-direct {p0, p2, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x3b629a4a37e8e54cL  # -3.470621197489601E22

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x565b98691580059L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3ed265ee43573153L  # -969992.8684753977

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_e5

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_b5

    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {v0}, Labcd/cB;->J8()Labcd/sB;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    move-object v3, v2

    check-cast v3, Labcd/sB;

    new-instance v3, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v3, p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v2, v3}, Labcd/sB;->j6(Labcd/LE;)Labcd/sB;

    invoke-virtual {v2}, Labcd/sB;->call()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/NI;

    invoke-virtual {v3}, Labcd/NI;->FH()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/YI;

    invoke-virtual {v5}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v6

    sget-object v7, Labcd/YI$a;->u7:Labcd/YI$a;

    if-eq v6, v7, :cond_4f

    invoke-virtual {v5}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v6

    sget-object v7, Labcd/YI$a;->DW:Labcd/YI$a;

    if-ne v6, v7, :cond_6c

    goto :goto_4f

    :cond_6c
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Messages: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/zI;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Status: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_93
    .catchall {:try_start_1d .. :try_end_93} :catchall_a5

    :cond_93
    :try_start_93
    iget-boolean v2, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v2, :cond_9a

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_9a
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V

    goto :goto_e4

    :catchall_a5
    move-exception v2

    iget-boolean v3, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v3, :cond_ad

    invoke-static {v1}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_ad
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v2
    :try_end_b5
    .catchall {:try_start_93 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v0

    :try_start_b6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Labcd/hD;

    if-eqz v1, :cond_d6

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_c2
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_e5

    if-eqz v0, :cond_c7

    const-string v0, "请指定一个有效的远程存储库 url："

    goto :goto_c9

    .line 99
    :cond_c7
    const-string v0, "Please specifiy a valid remote repository url:"

    .line 0
    :goto_c9
    :try_start_c9
    invoke-interface {p3, v0}, Lcom/aide/ui/scm/xa;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-direct {p0, p2, v0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->v5(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    goto :goto_e4

    :cond_d6
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_da
    .catchall {:try_start_c9 .. :try_end_da} :catchall_e5

    if-eqz v1, :cond_df

    const-string v1, "Git 推送"

    goto :goto_e1

    .line 99
    :cond_df
    const-string v1, "Git push"

    .line 0
    :goto_e1
    :try_start_e1
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    :cond_e4
    :goto_e4
    return-void

    .line 99
    :catchall_e5
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_f7

    const-wide v2, -0x3ed265ee43573153L  # -969992.8684753977

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f7
    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xf0d209d23eeec40L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x12a70d9674eb3e68L  # -5.503942083872478E218

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_6e

    :cond_12
    const/4 v0, 0x0

    :try_start_13
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    invoke-static {}, Labcd/cB;->VH()Labcd/XA;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Labcd/XA;->j6(Ljava/io/File;)Labcd/XA;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/XA;->DW(Z)Labcd/XA;

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    move-object v2, v1

    check-cast v2, Labcd/XA;

    new-instance v2, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-direct {v2, p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a$a;-><init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {v1, v2}, Labcd/XA;->j6(Labcd/LE;)Labcd/XA;

    invoke-virtual {v1, p4}, Labcd/XA;->j6(Ljava/lang/String;)Labcd/XA;

    invoke-virtual {v1}, Labcd/XA;->call()Labcd/cB;

    move-result-object v1

    invoke-virtual {v1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/UE;->j6()V

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_4e

    :try_start_49
    iget-boolean v1, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_6e

    if-nez v1, :cond_64

    goto :goto_61

    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_65

    if-eqz v2, :cond_58

    const-string v2, "Git 克隆"

    goto :goto_5a

    .line 99
    :cond_58
    const-string v2, "Git clone"

    .line 0
    :goto_5a
    :try_start_5a
    invoke-direct {p0, p5, v2, v1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    :try_start_5d
    iget-boolean v1, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v1, :cond_64

    :goto_61
    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_64
    return-void

    :catchall_65
    move-exception v1

    .line 99
    iget-boolean v2, p1, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-nez v2, :cond_6d

    invoke-static {v0}, Labcd/cJ;->j6(Labcd/cJ;)V

    :cond_6d
    throw v1
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_82

    const-wide v2, -0x12a70d9674eb3e68L  # -5.503942083872478E218

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x19c190de36ae691L  # -6.664157986825507E300

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_88

    :cond_12
    :try_start_12
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

    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, ".gitignore"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_3f

    :cond_60
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    invoke-virtual {p0, p2, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;

    move-result-object v0

    iget-object v1, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_74

    iget-object v0, v0, Lcom/aide/ui/scm/GitStatus;->Hw:Ljava/util/List;

    invoke-direct {p0, p2, v0, p3, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    :cond_74
    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_77
    .catchall {:try_start_12 .. :try_end_77} :catchall_78

    goto :goto_87

    :catchall_78
    move-exception v0

    :try_start_79
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_88

    if-eqz v1, :cond_82

    const-string v1, "Git 创建"

    goto :goto_84

    .line 99
    :cond_82
    const-string v1, "Git create"

    .line 0
    :goto_84
    :try_start_84
    invoke-direct {p0, p5, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    :goto_87
    return-void

    .line 99
    :catchall_88
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_9c

    const-wide v2, -0x19c190de36ae691L  # -6.664157986825507E300

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
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
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x4f43c2006dcbe90L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_2c

    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/GitConfiguration;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-direct {p0, p5}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    goto :goto_2b

    :catchall_1c
    move-exception v0

    :try_start_1d
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_2c

    if-eqz v1, :cond_26

    const-string v1, "Git 提交"

    goto :goto_28

    .line 99
    :cond_26
    const-string v1, "Git commit"

    .line 0
    :goto_28
    :try_start_28
    invoke-direct {p0, p5, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    :goto_2b
    return-void

    .line 99
    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x4f43c2006dcbe90L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x23f763aebd3639f3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x59b3bd5cc720ced3L  # 1.3049044476071919E124

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_7d

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_6d

    :try_start_19
    invoke-virtual {v0}, Labcd/cB;->we()Labcd/iB;

    move-result-object v1

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/iB;->j6(Labcd/YD;)Labcd/iB;

    invoke-virtual {v1}, Labcd/iB;->call()Labcd/pB;

    move-result-object v1

    invoke-virtual {v1}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v2

    sget-object v3, Labcd/pB$a;->FH:Labcd/pB$a;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_64

    if-eq v2, v3, :cond_3c

    :try_start_34
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_6d

    goto :goto_7c

    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_64

    if-eqz v4, :cond_4c

    const-string v4, "Git 合并失败: "

    goto :goto_4e

    .line 98
    :cond_4c
    const-string v4, "Git merge failed: "

    .line 0
    :goto_4e
    :try_start_4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v1

    :try_start_65
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    :try_start_6e
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_7d

    if-eqz v1, :cond_77

    const-string v1, "Git 合并"

    goto :goto_79

    .line 99
    :cond_77
    const-string v1, "Git merge"

    .line 0
    :goto_79
    :try_start_79
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    :goto_7c
    return-void

    .line 98
    :catchall_7d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_8f

    const-wide v2, 0x59b3bd5cc720ced3L  # 1.3049044476071919E124

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8f
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x46fd724c38ce8b00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x3bc42835db247f30L  # -5.136113711787855E20

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_8d

    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_7d

    :try_start_1a
    invoke-virtual {v0}, Labcd/cB;->DW()Labcd/_A;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/_A;->j6(Ljava/lang/String;)Labcd/_A;

    if-eqz p3, :cond_2b

    invoke-virtual {v1, p3}, Labcd/_A;->DW(Ljava/lang/String;)Labcd/_A;

    sget-object v2, Labcd/_A$a;->j6:Labcd/_A$a;

    invoke-virtual {v1, v2}, Labcd/_A;->j6(Labcd/_A$a;)Labcd/_A;

    :cond_2b
    invoke-virtual {v1}, Labcd/_A;->call()Labcd/ME;

    invoke-virtual {v0}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v1}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v2

    invoke-virtual {v2}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v2

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_74

    if-ne v2, v3, :cond_4c

    :try_start_44
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_7d

    goto :goto_8c

    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_74

    if-eqz v4, :cond_5c

    const-string v4, "Git 校检失败: "

    goto :goto_5e

    .line 98
    :cond_5c
    const-string v4, "Git checkout failed: "

    .line 0
    :goto_5e
    :try_start_5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v1

    invoke-virtual {v1}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v1

    :try_start_75
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v0

    :try_start_7e
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_8d

    if-eqz v1, :cond_87

    const-string v1, "Git 校验"

    goto :goto_89

    .line 99
    :cond_87
    const-string v1, "Git checkout"

    .line 0
    :goto_89
    :try_start_89
    invoke-direct {p0, p4, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    :goto_8c
    return-void

    .line 98
    :catchall_8d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_a0

    const-wide v2, -0x3bc42835db247f30L  # -5.136113711787855E20

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    throw v0
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
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x1c9caf24b59a0d55L  # 7.422402737681194E-171

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_e4

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d4

    :try_start_19
    invoke-virtual {v0}, Labcd/cB;->v5()Labcd/QA;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/QA;->DW(Z)Labcd/QA;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/QA;->FH(Ljava/lang/String;)Labcd/QA;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/ModifiedFile;

    iget-object v3, v3, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/QA;->j6(Ljava/lang/String;)Labcd/QA;

    goto :goto_2a

    :cond_40
    invoke-virtual {v1}, Labcd/QA;->call()Labcd/ME;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v2

    invoke-virtual {v2}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v2

    sget-object v3, Labcd/RA$a;->DW:Labcd/RA$a;

    if-ne v2, v3, :cond_a3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v2}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {v2}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_6b
    new-instance v1, Ljava/io/File;

    iget-object v3, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_98

    :cond_7f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_98
    .catchall {:try_start_19 .. :try_end_98} :catchall_cb

    :cond_98
    :goto_98
    :try_start_98
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    invoke-direct {p0, p3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/xa;)V
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_d4

    goto :goto_e3

    :cond_a3
    :try_start_a3
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_ae
    .catchall {:try_start_a3 .. :try_end_ae} :catchall_cb

    if-eqz v4, :cond_b3

    const-string v4, "Git 校检失败: "

    goto :goto_b5

    .line 99
    :cond_b3
    const-string v4, "Git checkout failed: "

    .line 0
    :goto_b5
    :try_start_b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/QA;->v5()Labcd/RA;

    move-result-object v1

    invoke-virtual {v1}, Labcd/RA;->j6()Labcd/RA$a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cb
    .catchall {:try_start_b5 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v1

    :try_start_cc
    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->j6()V

    throw v1
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_e4

    if-eqz v1, :cond_de

    const-string v1, "Git 丢弃"

    goto :goto_e0

    .line 99
    :cond_de
    const-string v1, "Git discard"

    .line 0
    :goto_e0
    :try_start_e0
    invoke-direct {p0, p3, v1, v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    :goto_e3
    return-void

    .line 99
    :catchall_e4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a;->Hw:Z

    if-eqz v1, :cond_f6

    const-wide v2, 0x1c9caf24b59a0d55L  # 7.422402737681194E-171

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f6
    goto :goto_f8

    :goto_f7
    throw v0

    :goto_f8
    goto :goto_f7
.end method
