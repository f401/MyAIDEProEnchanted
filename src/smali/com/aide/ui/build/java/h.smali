.class public Lcom/aide/ui/build/java/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/e;
.implements Labcd/ze;


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
.field private FH:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/ru;
        field = -0x19d605b6a589e415L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x159a306eedaaad05L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x4aa52cecb1f9925cL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x261208346b3abd44L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x3d3d9a455ab85a54L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = -0x250fa1b73a86e7c0L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x90fa531e1004058L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xe65e2c46d3e3b4dL

    const-class v0, Lcom/aide/ui/build/java/h;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xb1d395e2274e02fL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb1d395e2274e02fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/java/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->J0()V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/build/java/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/java/h;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1e240de2fdb811ecL
    .end annotation

    const-wide v2, 0x239ab33906b6f9c0L    # 3.587357785986681E-137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x239ab33906b6f9c0L    # 3.587357785986681E-137

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private EQ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x142dd25c6e21fe40L
    .end annotation

    const-wide v4, -0x29929a67c04ea998L    # -2.157492634889983E108

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29929a67c04ea998L    # -2.157492634889983E108

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "Compiling..."

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v1}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create destination dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/aide/ui/build/java/h;->gn:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->DW()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic FH(Lcom/aide/ui/build/java/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->u7()V

    return-void
.end method

.method private FH(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9e878164f9da73cL
    .end annotation

    const-wide v6, -0x4e88639f707940L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e88639f707940L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v1}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Z)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v1

    iget-boolean v4, p0, Lcom/aide/ui/build/java/h;->u7:Z

    const/16 v5, 0xf

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;ZI)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v1

    iget-boolean v3, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private J0()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x31e529eefd98ac2dL
    .end annotation

    const-wide v6, -0x48983da6005f8b9bL    # -8.523189896034583E-42

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48983da6005f8b9bL    # -8.523189896034583E-42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->VH()I

    move-result v1

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->Zo()I

    move-result v2

    const/16 v0, 0x64

    if-nez v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/aide/ui/build/java/h;->VH:I

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    iget v3, p0, Lcom/aide/ui/build/java/h;->Zo:I

    iget v4, p0, Lcom/aide/ui/build/java/h;->VH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_1
    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private gn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2860c27755ac853L
    .end annotation

    const-wide v2, -0x73ca607e6d22e7e5L    # -7.550243874241168E-250

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x73ca607e6d22e7e5L    # -7.550243874241168E-250

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "Your project contains errors. Please fix them before running the app."

    invoke-direct {p0, v0}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/java/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/java/h;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    return-void
.end method

.method private j6(Ljava/lang/String;IZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1677446be5666900L
    .end annotation

    const-wide v8, -0x240743087e109dcL    # -5.15776895413412E297

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x240743087e109dcL    # -5.15776895413412E297

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    iput p2, p0, Lcom/aide/ui/build/java/h;->Zo:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/build/java/h;->VH:I

    iput-boolean p3, p0, Lcom/aide/ui/build/java/h;->Hw:Z

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aide/ui/build/java/h;->VH:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/build/java/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/build/java/h;->Hw:Z

    return v0
.end method

.method private tp()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x137eb316fab9c2a8L
    .end annotation

    const-wide v4, -0x6c0849b6782e780L

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6c0849b6782e780L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lcom/aide/ui/build/java/h;->gn:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->v5()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->P8()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "Run"

    const-string v2, "There\'s no main method to run in this project!"

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aide/ui/build/java/h;->FH(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/build/java/g;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/java/g;-><init>(Lcom/aide/ui/build/java/h;)V

    const-string v3, "Run"

    invoke-static {v1, v3, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x939dec40380a5dfL
    .end annotation

    const-wide v2, -0x363ce85c237ff6dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x363ce85c237ff6dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->v5()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->tp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private we()V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x110ce513b894a637L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x17b72f70e5c4c1f1L    # -2.2643104046961537E194

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v3}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v4}, Labcd/EclipseJavaProject;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v4}, Labcd/EclipseJavaProject;->Hw(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Labcd/EclipseJavaProject;->Mr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v4}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aide/ui/build/java/h;->gn:Z

    move/from16 v16, v0

    invoke-static {}, Lcom/aide/ui/aa;->we()Z

    move-result v17

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v2 .. v18}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    invoke-virtual {v2}, Lcom/aide/ui/build/android/X;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_1

    const-wide v4, -0x17b72f70e5c4c1f1L    # -2.2643104046961537E194

    move-object/from16 v0, p0

    invoke-static {v2, v4, v5, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x1b5b24b12d8fef98L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b5b24b12d8fef98L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/java/a;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/java/a;-><init>(Lcom/aide/ui/build/java/h;)V

    invoke-virtual {v0, v1}, Labcd/ck;->j6(Labcd/ck$a;)V

    new-instance v0, Lcom/aide/ui/build/android/X;

    invoke-direct {v0}, Lcom/aide/ui/build/android/X;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    iget-object v0, p0, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    new-instance v1, Lcom/aide/ui/build/java/f;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/java/f;-><init>(Lcom/aide/ui/build/java/h;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x8f07141a9705c5bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8f07141a9705c5bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/java/h;->Hw:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->EQ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, -0x3e49c4bdc24e7adL    # -6.672974027310906E289

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3e49c4bdc24e7adL    # -6.672974027310906E289

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x5ec38d7a21173e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ec38d7a21173e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Labcd/ze$a;
    .registers 5

    const-wide v2, -0x17ba0fd83a8d8460L    # -2.001826196376853E194

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17ba0fd83a8d8460L    # -2.001826196376853E194

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/ze$a;->DW:Labcd/ze$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0xa4c1d4662dfe8b4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa4c1d4662dfe8b4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v0, 0x12

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x30fcd41588229513L    # 1.0197704049893878E-72

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30fcd41588229513L    # 1.0197704049893878E-72

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compilation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, -0x65babdbe92b6e273L    # -4.002502385957684E-182

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x65babdbe92b6e273L    # -4.002502385957684E-182

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Labcd/ck;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->gn()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->we()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(ZLjava/lang/String;)V
    .registers 10

    const-wide v2, -0x2aef422d016323dfL    # -5.858857551533624E101

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x2aef422d016323dfL    # -5.858857551533624E101

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    iput-boolean p1, p0, Lcom/aide/ui/build/java/h;->gn:Z

    const-string v0, "debug-aide"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->DW()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->FH()Z

    move-result v0

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6784\u5efa\u4e2d..."

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1, v4}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->EQ()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/we;->j6(Labcd/ze;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Building..."

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0xc1d3b813d900b9bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc1d3b813d900b9bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
