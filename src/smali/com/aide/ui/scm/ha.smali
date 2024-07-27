.class Lcom/aide/ui/scm/ha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ja;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
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
.field final FH:Lcom/aide/ui/scm/ja;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/ha;

    const-wide v2, 0xc1e937b1ab52cbdL

    const-wide v4, -0x1626cfbc952200a8L    # -7.712228931925362E201

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ja;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ha;->FH:Lcom/aide/ui/scm/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ha;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2faac9f156aac519L
    .end annotation

    const-wide v2, -0x2e765d337614bb8dL    # -6.225266320000479E84

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ha;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e765d337614bb8dL    # -6.225266320000479E84

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ha;->FH:Lcom/aide/ui/scm/ja;

    iget-object v0, v0, Lcom/aide/ui/scm/ja;->Hw:Lcom/aide/ui/scm/ua$b;

    invoke-virtual {v0, p1}, Lcom/aide/ui/scm/ua$b;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/scm/ha;->FH:Lcom/aide/ui/scm/ja;

    iget-object v0, v0, Lcom/aide/ui/scm/ja;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v0, v0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ha;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
