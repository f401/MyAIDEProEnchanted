.class Lcom/aide/ui/scm/ka;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ma;->run()V
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
.field final FH:Lcom/aide/ui/scm/ma;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0x1627402a1e566373L  # -7.577763346075647E201

    const-class v4, Lcom/aide/ui/scm/ka;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ma;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ka;->FH:Lcom/aide/ui/scm/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ka;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x51c37f0f36c40080L
    .end annotation

    const-wide v0, -0x2aed0ba989501e91L  # -6.633299535839522E101

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ka;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ka;->FH:Lcom/aide/ui/scm/ma;

    iget-object v2, v2, Lcom/aide/ui/scm/ma;->Hw:Lcom/aide/ui/scm/ua$b;

    invoke-virtual {v2, p1}, Lcom/aide/ui/scm/ua$b;->j6(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/aide/ui/scm/ka;->FH:Lcom/aide/ui/scm/ma;

    iget-object v2, v2, Lcom/aide/ui/scm/ma;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v2, v2, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ka;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method
