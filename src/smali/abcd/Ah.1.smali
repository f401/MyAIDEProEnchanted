.class Labcd/Ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Bh;->run()V
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
.field final FH:Ljava/util/List;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/Bh;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Ah;

    const-wide v2, -0x5d17df730569d4b9L    # -1.58284387075899E-140

    const-wide v4, 0x502f26195d4fa3fL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Bh;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/Ah;->v5:Labcd/Bh;

    iput-object p2, p0, Labcd/Ah;->FH:Ljava/util/List;

    iput-object p3, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1c0a731caa10dc94L
    .end annotation

    const-wide v6, 0x5b7ffb90cd8f8630L    # 5.6753537773109355E132

    :try_start_0
    sget-boolean v0, Labcd/Ah;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b7ffb90cd8f8630L    # 5.6753537773109355E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v0, v0, Labcd/Sk$b;->gn:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->FH:Ljava/util/List;

    invoke-virtual {v0, v1}, Labcd/Nk;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/mk;->j6(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v0, v0, Labcd/Sk$a;->v5:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/mk;->j6(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aide/ui/MainActivity;->FH(Z)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Zk;->rN(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {v0, v1}, Labcd/Zk;->U2(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->FH:Ljava/util/List;

    invoke-virtual {v0, v1}, Labcd/Nk;->j6(Ljava/util/List;)V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/aide/ui/aa;->gn()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gen/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "obj/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "libs/*/*.so"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v1

    iget-object v2, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    new-instance v3, Labcd/zh;

    invoke-direct {v3, p0}, Labcd/zh;-><init>(Labcd/Ah;)V

    const-string v4, "Initial commit"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ah;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v1, v1, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v1, v1, Labcd/Sk$a;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    iget-object v1, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
