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
        "Lcom/aide/common/ab<",
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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x1cff35e0c4735e61L  # -7.920386198417712E168

    const-class v4, Lcom/aide/ui/scm/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x237b15fa18194b08L
    .end annotation

    const-wide v0, 0x75cf525b65277619L  # 3.0098975104377137E259

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v2, v2, Lcom/aide/ui/scm/s;->FH:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " (current)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_40

    :cond_23
    iget-object v3, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v3, v3, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v3, v3, Lcom/aide/ui/scm/t;->v5:Lcom/aide/ui/scm/ua;

    iget-object v4, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v4, v4, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v4, v4, Lcom/aide/ui/scm/t;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v5, v5, Lcom/aide/ui/scm/s;->v5:Lcom/aide/ui/scm/t;

    iget-object v5, v5, Lcom/aide/ui/scm/t;->v5:Lcom/aide/ui/scm/ua;

    iget-object v6, p0, Lcom/aide/ui/scm/r;->FH:Lcom/aide/ui/scm/s;

    iget-object v6, v6, Lcom/aide/ui/scm/s;->Hw:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    :goto_40
    return-void

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/r;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/r;->j6(Ljava/lang/Integer;)V

    return-void
.end method
