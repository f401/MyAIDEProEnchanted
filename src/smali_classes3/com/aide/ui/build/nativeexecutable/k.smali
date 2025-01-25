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
    .registers 3

    const-class v0, Lcom/aide/ui/build/nativeexecutable/k;

    const-wide v1, -0xad04fbe50739491L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xd450207aeb0edf0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
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

    const-wide v0, 0x1872e7f52450a67cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->gn()V

    return-void
.end method

.method private VH()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1ae504053e62ca4L
    .end annotation

    const-wide v0, -0xd48be7d54afe80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Installing native executable..."

    const/16 v3, 0x5a

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/libs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v3
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_10b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_7c

    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->Zo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_7c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_77} :catch_78
    .catchall {:try_start_48 .. :try_end_77} :catchall_10b

    goto :goto_7d

    :catch_78
    move-exception v3

    :try_start_79
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_7c
    move-object v3, v5

    :goto_7d
    if-nez v3, :cond_c9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v7
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_10b

    if-eqz v7, :cond_c9

    :try_start_96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_c9

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_c3} :catch_c5
    .catchall {:try_start_96 .. :try_end_c3} :catchall_10b

    move-object v3, v2

    goto :goto_c9

    :catch_c5
    move-exception v2

    :try_start_c6
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_c9
    :goto_c9
    if-eqz v3, :cond_105

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/exe"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/build/nativeexecutable/k;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-virtual {v4, v3, v2}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    goto :goto_10a

    :cond_105
    iput-object v5, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V
    :try_end_10a
    .catchall {:try_start_c6 .. :try_end_10a} :catchall_10b

    :goto_10a
    return-void

    :catchall_10b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_113

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_113
    throw v2
.end method

.method private Zo()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd00865c8b31a1abL
    .end annotation

    const-wide v0, 0x2fa0d1b2b2897ac9L  # 2.8369700617056963E-79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->cn()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_18

    if-eqz v0, :cond_15

    const-string v0, "x86"

    goto :goto_17

    :cond_15
    const-string v0, "armeabi-v7a"

    :goto_17
    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18a955d35ce547c0L
    .end annotation

    const-wide v0, 0x37669adfa464e568L  # 8.109137092012086E-42

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/build/nativeexecutable/k;->Zo:Ljava/lang/String;

    const/16 v5, 0xf

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3fcb6baed1038759L
    .end annotation

    const-wide v0, -0x6f205a53cde42161L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Your project contains errors. Please fix them before running the app."

    invoke-direct {p0, v2}, Lcom/aide/ui/build/nativeexecutable/k;->DW(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
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

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21e7e5a7584ae95L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p2}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x21e7e5a7584ae95L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x6cdf3802e5987947L  # 2.6905002014776226E216

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/ck;->j6(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x6cdf3802e5987947L  # 2.6905002014776226E216

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xc9d133d48483a4dL
    .end annotation

    const-wide v0, -0x1cea152d5d23ee51L  # -2.067874454126142E169

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23

    if-eqz v2, :cond_15

    const-string v2, "构建 native code..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Building native code..."

    .line 0
    :goto_17
    const/4 v3, 0x0

    :try_start_18
    invoke-direct {p0, v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->FH:Lcom/aide/ui/build/g;

    iget-boolean v3, p0, Lcom/aide/ui/build/nativeexecutable/k;->v5:Z

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/g;->j6(Z)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    return-void

    .line 99
    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0xc699651be7e2738L  # -6.268344341721441E248

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/g;

    invoke-direct {v2}, Lcom/aide/ui/build/g;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->FH:Lcom/aide/ui/build/g;

    new-instance v3, Lcom/aide/ui/build/nativeexecutable/f;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/nativeexecutable/f;-><init>(Lcom/aide/ui/build/nativeexecutable/k;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/android/G;)V

    new-instance v2, Lcom/aide/ui/build/nativeexecutable/l;

    invoke-direct {v2}, Lcom/aide/ui/build/nativeexecutable/l;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/nativeexecutable/k;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    new-instance v3, Lcom/aide/ui/build/nativeexecutable/j;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/nativeexecutable/j;-><init>(Lcom/aide/ui/build/nativeexecutable/k;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Lcom/aide/ui/build/nativeexecutable/a;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public DW(Z)V
    .registers 6

    const-wide v0, 0x349ba6f73506587L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    iput-boolean p1, p0, Lcom/aide/ui/build/nativeexecutable/k;->v5:Z

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->DW()V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p0, v3}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_41

    if-eqz v2, :cond_38

    const-string v2, "构建中..."

    goto :goto_3a

    .line 99
    :cond_38
    const-string v2, "Building..."

    .line 0
    :goto_3a
    :try_start_3a
    invoke-direct {p0, v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/k;->u7()V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_41

    return-void

    .line 99
    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x44842100b238fa95L  # -3.6887071381754505E-22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x3ff073f5df8a1a4bL  # 1.028310654831915

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x129b03c4ff753eb3L  # 4.783036680083579E-219

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x64bf976c0734d94dL  # 2.0002653264229544E177

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, 0x37af06e6dedf29b1L  # 1.7808601837162073E-40

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/k;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
