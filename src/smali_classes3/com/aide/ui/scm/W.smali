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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0xd41ca12409a4e33L

    const-class v4, Lcom/aide/ui/scm/W;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x16063242afd6bda1L  # -3.1602292004605134E202

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/W;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/W;->v5:Lcom/aide/ui/scm/X;

    iget-object v2, v2, Lcom/aide/ui/scm/X;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/aide/ui/scm/W;->FH:Lcom/aide/ui/scm/GitStatus;

    invoke-virtual {v2}, Lcom/aide/ui/scm/GitStatus;->j6()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "Git"

    const-string v5, "No modified files found."

    invoke-static {v2, v4, v5, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_36

    :cond_2b
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/W;->FH:Lcom/aide/ui/scm/GitStatus;

    iget-object v4, p0, Lcom/aide/ui/scm/W;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/activities/CommitActivity;->j6(Landroid/app/Activity;Lcom/aide/ui/scm/GitStatus;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/W;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method
