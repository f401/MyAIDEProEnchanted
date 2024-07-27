.class Labcd/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/dj;->run()V
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
.field final FH:Ljava/util/List;

.field final Hw:Labcd/dj;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/cj;

    const-wide v2, -0x66df21c1892d81d8L

    const-wide v4, -0x22e3d249b9849f00L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/dj;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Labcd/cj;->Hw:Labcd/dj;

    iput-object p2, p0, Labcd/cj;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xf4c7c7521b10924L
    .end annotation

    const-wide v4, 0x17437455cd4f42e7L

    :try_start_0
    sget-boolean v0, Labcd/cj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17437455cd4f42e7L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v1, p0, Labcd/cj;->FH:Ljava/util/List;

    invoke-virtual {v0, v1}, Labcd/Nk;->j6(Ljava/util/List;)V

    new-instance v0, Labcd/Be;

    invoke-direct {v0}, Labcd/Be;-><init>()V

    iget-object v1, p0, Labcd/cj;->Hw:Labcd/dj;

    iget-object v1, v1, Labcd/dj;->v5:Labcd/ej;

    iget-object v1, v1, Labcd/ej;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Be;

    iget-object v1, p0, Labcd/cj;->Hw:Labcd/dj;

    iget-object v1, v1, Labcd/dj;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Be;->v5(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->gW()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "Build flavor has been added"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
