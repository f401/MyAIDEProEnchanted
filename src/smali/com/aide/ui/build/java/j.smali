.class Lcom/aide/ui/build/java/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/RunJavaActivity;->v5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Ljava/lang/reflect/Method;

.field final Hw:Ljava/lang/Object;

.field final v5:Lcom/aide/ui/build/java/RunJavaActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/java/j;

    const-wide v2, 0x7d90a06c8983440L

    const-wide v4, -0x1223619849bd5365L    # -1.6163961202854344E221

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/RunJavaActivity;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/build/java/j;->v5:Lcom/aide/ui/build/java/RunJavaActivity;

    iput-object p2, p0, Lcom/aide/ui/build/java/j;->FH:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/aide/ui/build/java/j;->Hw:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x8557a4b2801493dL
    .end annotation

    const-wide v6, -0x3dce693cd1adee0dL    # -7.554381781007011E10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3dce693cd1adee0dL    # -7.554381781007011E10

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/java/j;->FH:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/ui/build/java/j;->Hw:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/java/j;->v5:Lcom/aide/ui/build/java/RunJavaActivity;

    invoke-static {v0}, Lcom/aide/ui/build/java/RunJavaActivity;->DW(Lcom/aide/ui/build/java/RunJavaActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/java/i;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/java/i;-><init>(Lcom/aide/ui/build/java/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
