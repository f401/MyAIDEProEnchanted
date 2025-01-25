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
    .registers 5

    const-wide v0, 0x7d90a06c8983440L

    const-wide v2, -0x1223619849bd5365L  # -1.6163961202854344E221

    const-class v4, Lcom/aide/ui/build/java/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x8557a4b2801493dL
    .end annotation

    const-wide v0, -0x3dce693cd1adee0dL  # -7.554381781007011E10

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_38

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/build/java/j;->FH:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/ui/build/java/j;->Hw:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    goto :goto_29

    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_29
    iget-object v2, p0, Lcom/aide/ui/build/java/j;->v5:Lcom/aide/ui/build/java/RunJavaActivity;

    invoke-static {v2}, Lcom/aide/ui/build/java/RunJavaActivity;->DW(Lcom/aide/ui/build/java/RunJavaActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/java/i;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/java/i;-><init>(Lcom/aide/ui/build/java/j;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/j;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method
