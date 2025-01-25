.class Lcom/aide/ui/scm/qa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->gn(Ljava/lang/String;)Ljava/lang/String;
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
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0xe56334cebfd92dbL  # -3.3600030327862663E239

    const-class v4, Lcom/aide/ui/scm/qa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/qa;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/qa;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/qa;->Hw:Lcom/aide/ui/scm/ua$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18924ddcbbd4ef37L
    .end annotation

    const-wide v0, -0x3bb90087a708b975L  # -8.484738618351014E20

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/qa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/qa;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->VH(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/ui/scm/qa;->FH:Ljava/lang/String;

    new-instance v6, Lcom/aide/ui/scm/na;

    invoke-direct {v6, p0}, Lcom/aide/ui/scm/na;-><init>(Lcom/aide/ui/scm/qa;)V

    new-instance v7, Lcom/aide/ui/scm/oa;

    invoke-direct {v7, p0}, Lcom/aide/ui/scm/oa;-><init>(Lcom/aide/ui/scm/qa;)V

    new-instance v8, Lcom/aide/ui/scm/pa;

    invoke-direct {v8, p0}, Lcom/aide/ui/scm/pa;-><init>(Lcom/aide/ui/scm/qa;)V

    const-string v4, "Git"

    invoke-static/range {v3 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/qa;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method
