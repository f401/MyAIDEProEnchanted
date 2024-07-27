.class Lcom/aide/ui/scm/ja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->J0(Ljava/lang/String;)Ljava/lang/String;
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

.field final Hw:Lcom/aide/ui/scm/ua$b;

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/ja;

    const-wide v2, 0xc1e937b1ab52cbdL

    const-wide v4, -0xe55d13a23e4c747L    # -3.409895810664601E239

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/ja;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/ja;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/ja;->Hw:Lcom/aide/ui/scm/ua$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x136cda159d1b39f8L
    .end annotation

    const-wide v6, 0x2aa1ad60d342fc10L    # 2.466416478326249E-103

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ja;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aa1ad60d342fc10L    # 2.466416478326249E-103

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ja;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->VH(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/ja;->FH:Ljava/lang/String;

    new-instance v2, Lcom/aide/ui/scm/ha;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/ha;-><init>(Lcom/aide/ui/scm/ja;)V

    new-instance v3, Lcom/aide/ui/scm/ia;

    invoke-direct {v3, p0}, Lcom/aide/ui/scm/ia;-><init>(Lcom/aide/ui/scm/ja;)V

    const-string v4, "Git"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ja;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
