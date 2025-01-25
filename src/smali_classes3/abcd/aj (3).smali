.class Labcd/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/gj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x66df21c1892d81d8L

    const-wide v2, 0x4754f5d998c91b58L  # 4.353294692788061E35

    const-class v4, Labcd/aj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gj;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/aj;->v5:Labcd/gj;

    iput-object p2, p0, Labcd/aj;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/aj;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1996ccd487f59774L
    .end annotation

    const-wide v0, -0x5638ce5fee47345L

    :try_start_5
    sget-boolean v2, Labcd/aj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/aj;->FH:Ljava/lang/String;

    invoke-static {v2}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Labcd/Be;

    invoke-direct {v2}, Labcd/Be;-><init>()V

    iget-object v3, p0, Labcd/aj;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v2

    check-cast v2, Labcd/Be;

    iget-object v3, p0, Labcd/aj;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Be;->Hw(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->yS()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Library has been added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_47

    :cond_40
    iget-object v2, p0, Labcd/aj;->v5:Labcd/gj;

    iget-object v3, p0, Labcd/aj;->Hw:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/gj;->j6(Labcd/gj;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    :goto_47
    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/aj;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method
