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
    .registers 3

    const-class v0, Lcom/aide/ui/build/java/h;

    const-wide v1, 0xe65e2c46d3e3b4dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xb1d395e2274e02fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
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

    const-wide v0, 0x239ab33906b6f9c0L  # 3.587357785986681E-137

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private EQ()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x142dd25c6e21fe40L
    .end annotation

    const-wide v0, -0x29929a67c04ea998L  # -2.157492634889983E108

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Compiling..."

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v3}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4d

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create destination dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V

    goto :goto_60

    :cond_4d
    iget-boolean v2, p0, Lcom/aide/ui/build/java/h;->gn:Z

    if-eqz v2, :cond_59

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->Zo()V

    goto :goto_60

    :cond_59
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->DW()V
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_61

    :goto_60
    return-void

    :catchall_61
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_69

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_69
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/build/java/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->u7()V

    return-void
.end method

.method private FH(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x9e878164f9da73cL
    .end annotation

    const-wide v0, -0x4e88639f707940L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v3}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->FH(Z)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v5

    iget-boolean v8, p0, Lcom/aide/ui/build/java/h;->u7:Z

    const/16 v9, 0xf

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_46

    :cond_39
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v3

    iget-boolean v4, p0, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v2, v3, v6, p1, v4}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method private J0()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x31e529eefd98ac2dL
    .end annotation

    const-wide v0, -0x48983da6005f8b9bL  # -8.523189896034583E-42

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->VH()I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->Zo()I

    move-result v3

    const/16 v4, 0x64

    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    mul-int/lit8 v3, v3, 0x64

    div-int v4, v3, v2

    :goto_25
    iput v4, p0, Lcom/aide/ui/build/java/h;->VH:I

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    iget v5, p0, Lcom/aide/ui/build/java/h;->Zo:I

    iget v6, p0, Lcom/aide/ui/build/java/h;->VH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method private gn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2860c27755ac853L
    .end annotation

    const-wide v0, -0x73ca607e6d22e7e5L  # -7.550243874241168E-250

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Your project contains errors. Please fix them before running the app."

    invoke-direct {p0, v2}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
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
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1677446be5666900L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x240743087e109dcL  # -5.15776895413412E297

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
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
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x240743087e109dcL  # -5.15776895413412E297

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/java/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/build/java/h;->Hw:Z

    return p0
.end method

.method private tp()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x137eb316fab9c2a8L
    .end annotation

    const-wide v0, -0x6c0849b6782e780L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    iget-boolean v2, p0, Lcom/aide/ui/build/java/h;->gn:Z

    if-nez v2, :cond_60

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->v5()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v5, :cond_32

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->P8()V

    goto :goto_60

    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_61

    const-string v6, "Run"

    if-nez v4, :cond_44

    :try_start_3a
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "There\'s no main method to run in this project!"

    invoke-static {v2, v6, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_54

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aide/ui/build/java/h;->FH(Ljava/lang/String;)V

    goto :goto_60

    :cond_54
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/build/java/g;

    invoke-direct {v4, p0}, Lcom/aide/ui/build/java/g;-><init>(Lcom/aide/ui/build/java/h;)V

    invoke-static {v3, v6, v2, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_61

    :cond_60
    :goto_60
    return-void

    :catchall_61
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_69

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_69
    throw v2
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x939dec40380a5dfL
    .end annotation

    const-wide v0, -0x363ce85c237ff6dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/h;->v5:Ljava/lang/String;

    if-nez v2, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->v5()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->Hw()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->tp()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private we()V
    .registers 23
    .annotation runtime Labcd/su;
        method = 0x110ce513b894a637L
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, -0x17b72f70e5c4c1f1L  # -2.2643104046961537E194

    :try_start_7
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v1, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v4}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-boolean v4, v1, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v4}, Labcd/EclipseJavaProject;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iget-boolean v4, v1, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v4}, Labcd/EclipseJavaProject;->Hw(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Labcd/EclipseJavaProject;->Mr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iget-boolean v4, v1, Lcom/aide/ui/build/java/h;->u7:Z

    invoke-static {v0, v4}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    iget-object v5, v1, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    iget-boolean v0, v1, Lcom/aide/ui/build/java/h;->gn:Z

    invoke-static {}, Lcom/aide/ui/aa;->we()Z

    move-result v20

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v7, v4

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move/from16 v19, v0

    invoke-virtual/range {v5 .. v21}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iget-object v0, v1, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/X;->DW()V
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5b

    return-void

    :catchall_5b
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v4, :cond_63

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_63
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x1b5b24b12d8fef98L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/java/a;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/java/a;-><init>(Lcom/aide/ui/build/java/h;)V

    invoke-virtual {v2, v3}, Labcd/ck;->j6(Labcd/ck$a;)V

    new-instance v2, Lcom/aide/ui/build/android/X;

    invoke-direct {v2}, Lcom/aide/ui/build/android/X;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/java/h;->FH:Lcom/aide/ui/build/android/X;

    new-instance v3, Lcom/aide/ui/build/java/f;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/java/f;-><init>(Lcom/aide/ui/build/java/h;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x8f07141a9705c5bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/java/h;->Hw:Z

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->EQ()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x3e49c4bdc24e7adL  # -6.672974027310906E289

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, -0x5ec38d7a21173e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->u7()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()Labcd/ze$a;
    .registers 5

    const-wide v0, -0x17ba0fd83a8d8460L  # -2.001826196376853E194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v0, Labcd/ze$a;->DW:Labcd/ze$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0xa4c1d4662dfe8b4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x12

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x30fcd41588229513L  # 1.0197704049893878E-72

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/java/h;->DW(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0x65babdbe92b6e273L  # -4.002502385957684E-182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Labcd/ck;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->gn()V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->we()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :goto_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public j6(ZLjava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2aef422d016323dfL  # -5.858857551533624E101

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Labcd/Nk;->j6(ZZ)V

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

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_5d

    if-eqz v0, :cond_4d

    const-string v0, "构建中..."

    goto :goto_4f

    .line 99
    :cond_4d
    const-string v0, "Building..."

    .line 0
    :goto_4f
    :try_start_4f
    invoke-direct {p0, v0, v1, v1}, Lcom/aide/ui/build/java/h;->j6(Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/aide/ui/build/java/h;->EQ()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/we;->j6(Labcd/ze;)V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5d

    return-void

    .line 99
    :catchall_5d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v1, :cond_72

    const-wide v2, -0x2aef422d016323dfL  # -5.858857551533624E101

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0xc1d3b813d900b9bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/h;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
