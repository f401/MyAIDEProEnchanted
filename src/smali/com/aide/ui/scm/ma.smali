.class Lcom/aide/ui/scm/ma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->Ws(Ljava/lang/String;)Ljava/lang/String;
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

    const-class v0, Lcom/aide/ui/scm/ma;

    const-wide v2, 0xc1e937b1ab52cbdL

    const-wide v4, -0xe56024388102d30L    # -3.384949420785418E239

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/ma;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/ma;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/ma;->Hw:Lcom/aide/ui/scm/ua$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x148946a5d72e5d13L
    .end annotation

    const-wide v6, -0x3fc306b79be72e9cL    # -28.973760849055353

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ma;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3fc306b79be72e9cL    # -28.973760849055353

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ma;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->VH(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/scm/ma;->FH:Ljava/lang/String;

    new-instance v4, Lcom/aide/ui/scm/ka;

    invoke-direct {v4, p0}, Lcom/aide/ui/scm/ka;-><init>(Lcom/aide/ui/scm/ma;)V

    new-instance v5, Lcom/aide/ui/scm/la;

    invoke-direct {v5, p0}, Lcom/aide/ui/scm/la;-><init>(Lcom/aide/ui/scm/ma;)V

    const-string v1, "Git"

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ma;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
