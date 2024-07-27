.class Lcom/aide/engine/service/b;
.super Labcd/qc;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/CodeAnalysisEngineService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final VH:Lcom/aide/engine/service/CodeAnalysisEngineService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/engine/service/b;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, -0x2080399883a4560L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/b;->VH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {p0}, Labcd/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7b6e114cc01ab55L
    .end annotation

    const-wide v2, 0x300df435799940b1L    # 3.233591038144408E-77

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/b;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x300df435799940b1L    # 3.233591038144408E-77

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/b;->VH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-virtual {v0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/b;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x57a3a7c05215ffc1L
    .end annotation

    const-wide v2, 0xa276998208d78a1L    # 9.51702311561963E-260

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/b;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa276998208d78a1L    # 9.51702311561963E-260

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/b;->VH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/b;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
