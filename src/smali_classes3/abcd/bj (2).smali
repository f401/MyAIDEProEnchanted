.class Labcd/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gj;->SI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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

.field final Hw:Labcd/gj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x66df21c1892d81d8L

    const-wide v2, 0x47553db7db20a379L  # 4.41160110341876E35

    const-class v4, Labcd/bj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gj;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/bj;->Hw:Labcd/gj;

    iput-object p2, p0, Labcd/bj;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/bj;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x17a46a457cabb8b4L
    .end annotation

    const-wide v0, 0x32533ee3bc63680fL  # 2.8554451848949934E-66

    :try_start_5
    sget-boolean v2, Labcd/bj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Be;

    invoke-direct {v2}, Labcd/Be;-><init>()V

    iget-object v3, p0, Labcd/bj;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v2

    check-cast v2, Labcd/Be;

    invoke-virtual {v2, p1}, Labcd/Be;->FH(Ljava/lang/String;)V

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
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/bj;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method
