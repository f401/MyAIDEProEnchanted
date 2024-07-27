.class Lcom/aide/ui/scm/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/s;->run()V
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
        "Ljava/lang/Integer;",
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
.field final FH:Lcom/aide/ui/scm/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/r;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, -0x1cff35e0c4735e61L    # -7.920386198417712E168

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/s;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Integer;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x237b15fa18194b08L
    .end annotation

    const-wide v6, 0x75cf525b65277619L    # 3.0098975104377137E259

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x75cf525b65277619L    # 3.0098975104377137E259

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v0, v0, Lcom/aide/ui/scm/s;->FH:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " (current)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v1, v1, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v1, v1, Lcom/aide/ui/scm/t;->v5:Lcom/aide/ui/scm/ua;

    iget-object v2, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v2, v2, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v2, v2, Lcom/aide/ui/scm/t;->FH:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v3, v3, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v3, v3, Lcom/aide/ui/scm/t;->v5:Lcom/aide/ui/scm/ua;

    iget-object v4, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v4, v4, Lcom/aide/ui/scm/s;->Hw:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/r;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/r;->j6(Ljava/lang/Integer;)V

    return-void
.end method
