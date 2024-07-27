.class Lcom/aide/ui/scm/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/k;->run()V
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

.field final Hw:Lcom/aide/ui/scm/k;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/j;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0x367bd48bf4d861f7L    # 3.0467579212754476E-46

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/k;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/j;->Hw:Lcom/aide/ui/scm/k;

    iput-object p2, p0, Lcom/aide/ui/scm/j;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2034a3f64f2fc9c8L
    .end annotation

    const-wide v4, 0x14a1fc5e64d45779L    # 2.735414547868499E-209

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14a1fc5e64d45779L    # 2.735414547868499E-209

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/j;->Hw:Lcom/aide/ui/scm/k;

    iget-object v0, v0, Lcom/aide/ui/scm/k;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v1, p0, Lcom/aide/ui/scm/j;->Hw:Lcom/aide/ui/scm/k;

    iget-object v1, v1, Lcom/aide/ui/scm/k;->Zo:Lcom/aide/ui/scm/ua$d;

    iget-object v2, p0, Lcom/aide/ui/scm/j;->FH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
