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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x367bd48bf4d861f7L  # 3.0467579212754476E-46

    const-class v4, Lcom/aide/ui/scm/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2034a3f64f2fc9c8L
    .end annotation

    const-wide v0, 0x14a1fc5e64d45779L  # 2.735414547868499E-209

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/j;->Hw:Lcom/aide/ui/scm/k;

    iget-object v2, v2, Lcom/aide/ui/scm/k;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v3, p0, Lcom/aide/ui/scm/j;->Hw:Lcom/aide/ui/scm/k;

    iget-object v3, v3, Lcom/aide/ui/scm/k;->Zo:Lcom/aide/ui/scm/ua$d;

    iget-object v4, p0, Lcom/aide/ui/scm/j;->FH:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/j;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method
