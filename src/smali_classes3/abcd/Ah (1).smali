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
    .registers 5

    const-wide v0, -0x5d17df730569d4b9L  # -1.58284387075899E-140

    const-wide v2, 0x502f26195d4fa3fL

    const-class v4, Labcd/Ah;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1c0a731caa10dc94L
    .end annotation

    const-wide v0, 0x5b7ffb90cd8f8630L  # 5.6753537773109355E132

    :try_start_5
    sget-boolean v2, Labcd/Ah;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v2, v2, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v2, v2, Labcd/Sk$b;->gn:Z

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->FH:Ljava/util/List;

    invoke-virtual {v2, v3}, Labcd/Nk;->j6(Ljava/util/List;)V

    iget-object v2, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/mk;->j6(Ljava/lang/String;)V

    :cond_2c
    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    :goto_40
    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    goto/16 :goto_ee

    :cond_45
    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v2, v2, Labcd/Sk$a;->v5:Ljava/lang/String;

    if-nez v2, :cond_50

    iget-object v2, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    goto :goto_6c

    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v3, v3, Labcd/Bh;->Zo:Labcd/Sk$a;

    iget-object v3, v3, Labcd/Sk$a;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6c
    if-eqz v2, :cond_75

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/mk;->j6(Ljava/lang/String;)V

    :cond_75
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->FH(Z)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->rN(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    const-string v3, "created"

    invoke-virtual {v2, v3}, Labcd/Zk;->U2(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->FH:Ljava/util/List;

    invoke-virtual {v2, v3}, Labcd/Nk;->j6(Ljava/util/List;)V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d8

    invoke-static {}, Lcom/aide/ui/aa;->gn()Z

    move-result v2

    if-eqz v2, :cond_d8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bin/"

    aput-object v3, v2, v4

    const-string v3, "gen/"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "obj/"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "libs/*/*.so"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, ""

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v3

    iget-object v4, p0, Labcd/Ah;->Hw:Ljava/lang/String;

    new-instance v5, Labcd/zh;

    invoke-direct {v5, p0}, Labcd/zh;-><init>(Labcd/Ah;)V

    const-string v6, "Initial commit"

    invoke-virtual {v3, v4, v6, v2, v5}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_ee

    :cond_d8
    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    iget-object v3, p0, Labcd/Ah;->Hw:Ljava/lang/String;
    :try_end_ec
    .catchall {:try_start_5 .. :try_end_ec} :catchall_ef

    goto/16 :goto_40

    :cond_ee
    :goto_ee
    return-void

    :catchall_ef
    move-exception v2

    sget-boolean v3, Labcd/Ah;->DW:Z

    if-eqz v3, :cond_f7

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_f7
    goto :goto_f9

    :goto_f8
    throw v2

    :goto_f9
    goto :goto_f8
.end method
