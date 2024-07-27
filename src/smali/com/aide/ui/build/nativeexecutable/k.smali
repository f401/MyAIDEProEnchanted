.class public Lcom/aide/ui/build/nativeexecutable/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/e;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Lcom/aide/ui/build/g;
    .annotation runtime Labcd/ru;
        field = -0x45d8ab38b22e1c33L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/nativeexecutable/l;
    .annotation runtime Labcd/ru;
        field = -0x3b1301776b78e2cL
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0xae803e2321e899fL
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x56d8b62dcd41880L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xad04fbe50739491L

    const-class v0, Lcom/aide/ui/build/nativeexecutable/k;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0xd450207aeb0edf0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd450207aeb0edf0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->j6()V

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29fb44ac6eecbd40L
    .end annotation

    const-wide v2, 0x1872e7f52450a67cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1872e7f52450a67cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->gn()V

    return-void
.end method

.method private VH()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1ae504053e62ca4L
    .end annotation

    const-wide v6, -0xd48be7d54afe80L

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xd48be7d54afe80L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "Installing native executable..."

    const/16 v2, 0x5a

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/exe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-virtual {v2, v0, v1}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private Zo()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd00865c8b31a1abL
    .end annotation

    const-wide v2, 0x2fa0d1b2b2897ac9L    # 2.8369700617056963E-79

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fa0d1b2b2897ac9L    # 2.8369700617056963E-79

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->cn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x86"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "armeabi-v7a"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18a955d35ce547c0L
    .end annotation

    const-wide v4, 0x37669adfa464e568L    # 8.109137092012086E-42

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37669adfa464e568L    # 8.109137092012086E-42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3fcb6baed1038759L
    .end annotation

    const-wide v2, -0x6f205a53cde42161L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6f205a53cde42161L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "Your project contains errors. Please fix them before running the app."

    invoke-direct {p0, v0}, Lcom/aide/ui/build/nativeexecutable/k;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->VH()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/nativeexecutable/k;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xcf68db2a8cb4c0bL
    .end annotation

    const-wide v2, 0x21e7e5a7584ae95L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x21e7e5a7584ae95L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p2}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5cd33f708928b347L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, 0x6cdf3802e5987947L    # 2.6905002014776226E216

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6cdf3802e5987947L    # 2.6905002014776226E216

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/ck;->j6(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xc9d133d48483a4dL
    .end annotation

    const-wide v2, -0x1cea152d5d23ee51L    # -2.067874454126142E169

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1cea152d5d23ee51L    # -2.067874454126142E169

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6784\u5efa native code..."

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->FH:Lcom/aide/ui/build/g;

    iget-boolean v1, p0, Lcom/aide/ui/build/nativeexecutable/k;->v5:Z

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/g;->j6(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Building native code..."

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0xc699651be7e2738L    # -6.268344341721441E248

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc699651be7e2738L    # -6.268344341721441E248

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/g;

    invoke-direct {v0}, Lcom/aide/ui/build/g;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->FH:Lcom/aide/ui/build/g;

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->FH:Lcom/aide/ui/build/g;

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/f;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/nativeexecutable/f;-><init>(Lcom/aide/ui/build/nativeexecutable/k;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/android/G;)V

    new-instance v0, Lcom/aide/ui/build/nativeexecutable/l;

    invoke-direct {v0}, Lcom/aide/ui/build/nativeexecutable/l;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/k;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/j;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/nativeexecutable/j;-><init>(Lcom/aide/ui/build/nativeexecutable/k;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Lcom/aide/ui/build/nativeexecutable/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Z)V
    .registers 8

    const-wide v4, 0x349ba6f73506587L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x349ba6f73506587L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    iput-boolean p1, p0, Lcom/aide/ui/build/nativeexecutable/k;->v5:Z

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->DW()V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6784\u5efa\u4e2d..."

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->u7()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Building..."

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x44842100b238fa95L    # -3.6887071381754505E-22

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x44842100b238fa95L    # -3.6887071381754505E-22

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, 0x3ff073f5df8a1a4bL    # 1.028310654831915

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff073f5df8a1a4bL    # 1.028310654831915

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x129b03c4ff753eb3L    # 4.783036680083579E-219

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x129b03c4ff753eb3L    # 4.783036680083579E-219

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, 0x64bf976c0734d94dL    # 2.0002653264229544E177

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x64bf976c0734d94dL    # 2.0002653264229544E177

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, 0x37af06e6dedf29b1L    # 1.7808601837162073E-40

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37af06e6dedf29b1L    # 1.7808601837162073E-40

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
