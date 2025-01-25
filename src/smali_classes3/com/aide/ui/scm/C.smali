.class Lcom/aide/ui/scm/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/D;->run()V
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

.field final Hw:Lcom/aide/ui/scm/D;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x368302364b8a134fL  # 4.1619967828313E-46

    const-class v4, Lcom/aide/ui/scm/C;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/D;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iput-object p2, p0, Lcom/aide/ui/scm/C;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x138cd544548a9505L
    .end annotation

    const-wide v0, -0x7fa541d6f7d5ae0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v2, v2, Lcom/aide/ui/scm/D;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_57

    if-eqz v4, :cond_26

    const-string v4, "从当前分支 \'"

    goto :goto_28

    .line 98
    :cond_26
    const-string v4, "Branch from current branch \'"

    .line 0
    :goto_28
    :try_start_28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v4, v4, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v5, p0, Lcom/aide/ui/scm/C;->FH:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_57

    if-eqz v4, :cond_41

    const-string v4, "\'. 新建分支名:"

    goto :goto_43

    .line 98
    :cond_41
    const-string v4, "\'. New branch name:"

    .line 0
    :goto_43
    :try_start_43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/scm/B;

    invoke-direct {v4, p0}, Lcom/aide/ui/scm/B;-><init>(Lcom/aide/ui/scm/C;)V

    const-string v5, "Git"

    const-string v6, ""

    invoke-static {v2, v5, v3, v6, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_57

    return-void

    .line 98
    :catchall_57
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/C;->DW:Z

    if-eqz v3, :cond_5f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    throw v2
.end method
