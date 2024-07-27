.class Lcom/aide/ui/scm/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/X;->run()V
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
.field final FH:Lcom/aide/ui/scm/GitStatus;

.field final Hw:Ljava/lang/String;

.field final v5:Lcom/aide/ui/scm/X;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/W;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0xd41ca12409a4e33L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/X;Lcom/aide/ui/scm/GitStatus;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/W;->v5:Lcom/aide/ui/scm/X;

    iput-object p2, p0, Lcom/aide/ui/scm/W;->FH:Lcom/aide/ui/scm/GitStatus;

    iput-object p3, p0, Lcom/aide/ui/scm/W;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1f4bf4c492f8ecfcL
    .end annotation

    const-wide v4, -0x16063242afd6bda1L    # -3.1602292004605134E202

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/W;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16063242afd6bda1L    # -3.1602292004605134E202

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/W;->v5:Lcom/aide/ui/scm/X;

    iget-object v0, v0, Lcom/aide/ui/scm/X;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/W;->FH:Lcom/aide/ui/scm/GitStatus;

    invoke-virtual {v0}, Lcom/aide/ui/scm/GitStatus;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Git"

    const-string v2, "No modified files found."

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/W;->FH:Lcom/aide/ui/scm/GitStatus;

    iget-object v2, p0, Lcom/aide/ui/scm/W;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/activities/CommitActivity;->j6(Landroid/app/Activity;Lcom/aide/ui/scm/GitStatus;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/W;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
