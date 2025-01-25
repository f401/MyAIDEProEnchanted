.class Lcom/aide/ui/scm/d;
.super Lcom/aide/ui/scm/ExternalGitService$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ExternalGitService$a;-><init>(Lcom/aide/ui/scm/ExternalGitService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final gn:Lcom/aide/ui/scm/ExternalGitService;

.field final u7:Lcom/aide/ui/scm/ExternalGitService$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x30707b0814eb66fL

    const-wide v2, 0x281f2265bc8f6e7cL

    const-class v4, Lcom/aide/ui/scm/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ExternalGitService$a;Labcd/QK;Lcom/aide/ui/scm/ExternalGitService;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/d;->u7:Lcom/aide/ui/scm/ExternalGitService$a;

    iput-object p3, p0, Lcom/aide/ui/scm/d;->gn:Lcom/aide/ui/scm/ExternalGitService;

    invoke-direct {p0, p2}, Lcom/aide/ui/scm/ExternalGitService$b;-><init>(Labcd/QK;)V

    return-void
.end method


# virtual methods
.method public DW(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x12d1c934037e42c8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/d;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2d7e135197f9ad1L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gitconfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Labcd/FG;

    invoke-direct {v1, p1, v0, p2}, Labcd/FG;-><init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-object v1

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/d;->VH:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x2d7e135197f9ad1L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method
