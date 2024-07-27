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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/C;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0x368302364b8a134fL    # 4.1619967828313E-46

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x138cd544548a9505L
    .end annotation

    const-wide v6, -0x7fa541d6f7d5ae0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fa541d6f7d5ae0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v0, v0, Lcom/aide/ui/scm/D;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4ece\u5f53\u524d\u5206\u652f \'"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v0, v0, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/C;->FH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\'. \u65b0\u5efa\u5206\u652f\u540d:"

    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/aide/ui/scm/B;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/B;-><init>(Lcom/aide/ui/scm/C;)V

    const-string v3, "Git"

    const-string v4, ""

    invoke-static {v1, v3, v0, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 98
    :cond_1
    const-string v0, "Branch from current branch \'"

    goto :goto_0

    :cond_2
    const-string v0, "\'. New branch name:"

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/C;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
