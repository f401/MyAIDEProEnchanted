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
    .registers 5

    const-wide v0, -0x66df21c1892d81d8L

    const-wide v2, -0x22e3d249b9849f00L

    const-class v4, Labcd/cj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf4c7c7521b10924L
    .end annotation

    const-wide v0, 0x17437455cd4f42e7L

    :try_start_5
    sget-boolean v2, Labcd/cj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/cj;->FH:Ljava/util/List;

    invoke-virtual {v2, v3}, Labcd/Nk;->j6(Ljava/util/List;)V

    new-instance v2, Labcd/Be;

    invoke-direct {v2}, Labcd/Be;-><init>()V

    iget-object v3, p0, Labcd/cj;->Hw:Labcd/dj;

    iget-object v3, v3, Labcd/dj;->v5:Labcd/ej;

    iget-object v3, v3, Labcd/ej;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v2

    check-cast v2, Labcd/Be;

    iget-object v3, p0, Labcd/cj;->Hw:Labcd/dj;

    iget-object v3, v3, Labcd/dj;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Be;->v5(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->gW()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Build flavor has been added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/cj;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method
