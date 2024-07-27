.class public abstract Labcd/eI;
.super Labcd/cI;

# interfaces
.implements Labcd/nI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/eI$a;,
        Labcd/eI$b;,
        Labcd/eI$c;
    }
.end annotation


# static fields
.field private static aM:[I


# instance fields
.field private BT:Z

.field private KD:Labcd/EI;

.field private Mr:Labcd/eG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LeG",
            "<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation
.end field

.field private P8:Z

.field private SI:Labcd/RK$c;

.field final U2:Labcd/fG;

.field final a8:Labcd/fG;

.field private ei:Ljava/lang/String;

.field private er:Labcd/eI$c;

.field private gW:Z

.field private final j3:Labcd/qG;

.field private final lg:Labcd/fG;

.field private nw:Labcd/kH;

.field final rN:Labcd/fG;

.field private vy:Z

.field private yS:Z


# direct methods
.method public constructor <init>(Labcd/BI;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/cI;-><init>(Labcd/BI;)V

    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v0, p0, Labcd/eI;->er:Labcd/eI$c;

    iget-object v0, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/eI$b;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/eI$b;

    iget-object v1, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->VH()Labcd/eJ;

    move-result-object v1

    sget-object v2, Labcd/eJ;->DW:Labcd/eJ;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Labcd/eI;->BT:Z

    iget-object v1, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->J0()Z

    move-result v1

    iput-boolean v1, p0, Labcd/eI;->yS:Z

    iget-boolean v0, v0, Labcd/eI$b;->DW:Z

    iput-boolean v0, p0, Labcd/eI;->vy:Z

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    new-instance v0, Labcd/eG;

    invoke-direct {v0}, Labcd/eG;-><init>()V

    iput-object v0, p0, Labcd/eI;->Mr:Labcd/eG;

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    const-string v1, "REACHABLE"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->U2:Labcd/fG;

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    const-string v1, "COMMON"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->a8:Labcd/fG;

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->lg:Labcd/fG;

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    const-string v1, "ADVERTISED"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->rN:Labcd/fG;

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v1, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v1, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v1, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/fG;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private DW(Labcd/LE;)V
    .registers 5

    iget-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    iget-boolean v0, p0, Labcd/eI;->gW:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/_I;

    invoke-virtual {p0}, Labcd/aI;->VH()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Labcd/_I;-><init>(Ljava/io/InputStream;Labcd/LE;Ljava/io/Writer;)V

    :goto_0
    iget-object v1, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object v0

    iget-boolean v2, p0, Labcd/eI;->yS:Z

    invoke-virtual {v0, v2}, Labcd/AI;->j6(Z)V

    iget-object v2, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->EQ()Z

    move-result v2

    invoke-virtual {v0, v2}, Labcd/AI;->v5(Z)V

    iget-object v2, p0, Labcd/eI;->ei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Labcd/AI;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Labcd/AI;->j6(Labcd/LE;)Labcd/kH;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->nw:Labcd/kH;

    invoke-virtual {v1}, Labcd/EE;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private DW(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/eI;->KD:Labcd/EI;

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    :goto_2
    return v4

    :cond_1
    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/EI;->j6()V

    iput-boolean v4, p0, Labcd/cI;->J8:Z

    move v4, v3

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    :try_start_0
    iget-object v6, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    invoke-virtual {v6, v7}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v6

    iget-object v7, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {v6, v7}, Labcd/iG;->DW(Labcd/fG;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "want "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Labcd/eI;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    :goto_4
    const/16 v2, 0xa

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/EI;->j6(Ljava/lang/String;)V

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4
.end method

.method private J0()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Labcd/eI;->BT:Z

    if-eqz v1, :cond_0

    const-string v1, "include-tag"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/eI;->BT:Z

    :cond_0
    iget-boolean v1, p0, Labcd/eI;->vy:Z

    if-eqz v1, :cond_1

    const-string v1, "ofs-delta"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    :cond_1
    const-string v1, "multi_ack_detailed"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Labcd/eI$c;->FH:Labcd/eI$c;

    iput-object v1, p0, Labcd/eI;->er:Labcd/eI$c;

    iget-boolean v1, p0, Labcd/cI;->Ws:Z

    if-eqz v1, :cond_2

    const-string v1, "no-done"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/eI;->P8:Z

    :cond_2
    :goto_0
    iget-boolean v1, p0, Labcd/eI;->yS:Z

    if-eqz v1, :cond_3

    const-string v1, "thin-pack"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/eI;->yS:Z

    :cond_3
    const-string v1, "side-band-64k"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean v3, p0, Labcd/eI;->gW:Z

    :cond_4
    :goto_1
    iget-boolean v1, p0, Labcd/cI;->Ws:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Labcd/eI;->er:Labcd/eI$c;

    sget-object v2, Labcd/eI$c;->FH:Labcd/eI$c;

    if-ne v1, v2, :cond_9

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v1, "multi_ack"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Labcd/eI$c;->DW:Labcd/eI$c;

    iput-object v1, p0, Labcd/eI;->er:Labcd/eI$c;

    goto :goto_0

    :cond_7
    sget-object v1, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v1, p0, Labcd/eI;->er:Labcd/eI$c;

    goto :goto_0

    :cond_8
    const-string v1, "side-band"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Labcd/eI;->gW:Z

    goto :goto_1

    :cond_9
    new-instance v0, Labcd/nD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->statelessRPCRequiresOptionToBeEnabled:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "multi_ack_detailed"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method

.method private J8()V
    .registers 4

    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/eI;->j6(Labcd/YD;)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/eI;->j6(Labcd/YD;)V

    goto :goto_0
.end method

.method private Ws()V
    .registers 5

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    const/4 v1, 0x2

    new-array v1, v1, [Labcd/fG;

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/eI;->U2:Labcd/fG;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Labcd/eI;->rN:Labcd/fG;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Labcd/qG;->j6([Labcd/fG;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v1, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/util/Collection;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    sget-object v1, Labcd/kG;->DW:Labcd/kG;

    invoke-virtual {v0, v1}, Labcd/qG;->DW(Labcd/kG;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    new-instance v1, Labcd/dI;

    invoke-direct {v1, p0}, Labcd/dI;-><init>(Labcd/eI;)V

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/yG;)V

    return-void
.end method

.method private j6(Ljava/util/Collection;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    :try_start_0
    iget-object v3, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    instance-of v3, v0, Labcd/dG;

    if-eqz v3, :cond_0

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->U2()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6(Labcd/LE;)V
    .registers 13

    new-instance v6, Labcd/uE;

    invoke-direct {v6}, Labcd/uE;-><init>()V

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_0
    invoke-direct {p0}, Labcd/eI;->Ws()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_1
    iget-object v7, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v7}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_2
    :goto_0
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Labcd/eI;->P8:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    const-string v1, "done\n"

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->DW()V

    :cond_4
    if-nez v4, :cond_5

    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v0, p0, Labcd/eI;->er:Labcd/eI$c;

    add-int/lit8 v5, v5, 0x1

    :cond_5
    if-gtz v5, :cond_f

    iget-object v0, p0, Labcd/eI;->er:Labcd/eI$c;

    sget-object v1, Labcd/eI$c;->j6:Labcd/eI$c;

    if-ne v0, v1, :cond_f

    :cond_6
    return-void

    :cond_7
    iget-object v8, p0, Labcd/cI;->J0:Labcd/EI;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "have "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Labcd/EI;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v7, v0, 0x1f

    if-nez v7, :cond_1

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v7}, Labcd/EI;->j6()V

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x20

    if-ne v0, v7, :cond_8

    iget-boolean v7, p0, Labcd/cI;->Ws:Z

    if-eqz v7, :cond_1

    :cond_8
    iget-object v7, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v7, v6}, Labcd/DI;->j6(Labcd/uE;)Labcd/DI$a;

    move-result-object v7

    invoke-static {}, Labcd/eI;->we()[I

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/4 v9, 0x2

    if-eq v8, v9, :cond_b

    const/4 v9, 0x3

    if-eq v8, v9, :cond_9

    const/4 v9, 0x4

    if-eq v8, v9, :cond_9

    const/4 v9, 0x5

    if-eq v8, v9, :cond_9

    :goto_1
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v0, Labcd/eI$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v0

    :cond_9
    iget-object v1, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v1, v6}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Labcd/eI;->j6(Labcd/iG;Labcd/DI$a;)V

    sget-object v1, Labcd/DI$a;->v5:Labcd/DI$a;

    if-ne v7, v1, :cond_a

    const/4 v3, 0x1

    :cond_a
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_b
    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v0, p0, Labcd/eI;->er:Labcd/eI$c;

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_c
    const/4 v5, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v5, v5, -0x1

    iget-boolean v7, p0, Labcd/eI;->P8:Z

    and-int/2addr v7, v3

    if-nez v7, :cond_2

    iget-boolean v7, p0, Labcd/cI;->Ws:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v8, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_e
    if-eqz v1, :cond_1

    const/16 v7, 0x100

    if-le v2, v7, :cond_1

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0, v6}, Labcd/DI;->j6(Labcd/uE;)Labcd/DI$a;

    move-result-object v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Labcd/eI;->we()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    :cond_10
    :goto_2
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Labcd/eI$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v0

    :cond_11
    sget-object v0, Labcd/eI$c;->DW:Labcd/eI$c;

    iput-object v0, p0, Labcd/eI;->er:Labcd/eI$c;

    goto :goto_2

    :cond_12
    new-instance v0, Labcd/eI$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v0

    :cond_13
    new-instance v0, Labcd/eI$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v0
.end method

.method private j6(Labcd/YD;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6(Labcd/iG;Labcd/DI$a;)V
    .registers 5

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_0

    sget-object v0, Labcd/DI$a;->Hw:Labcd/DI$a;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Labcd/eI;->lg:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/eI;->KD:Labcd/EI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/EI;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/eI;->lg:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_0
    iget-object v0, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    instance-of v0, p1, Labcd/dG;

    if-eqz v0, :cond_1

    check-cast p1, Labcd/dG;

    iget-object v0, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/dG;->FH(Labcd/fG;)V

    :cond_1
    return-void
.end method

.method private j6(Labcd/yE;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iget-object v1, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v1, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6(Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Hw()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-lez p2, :cond_2

    new-instance v0, Ljava/util/Date;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Labcd/eI;->j3:Labcd/qG;

    sget-object v2, Labcd/kG;->DW:Labcd/kG;

    invoke-virtual {v1, v2}, Labcd/qG;->DW(Labcd/kG;)V

    iget-object v1, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v2, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {v1, v2}, Labcd/qG;->j6(Ljava/util/Collection;)V

    iget-object v1, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-static {v0}, Labcd/wG;->j6(Ljava/util/Date;)Labcd/yG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->j6(Labcd/yG;)V

    :cond_1
    :goto_3
    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v1, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/dG;->FH(Labcd/fG;)V

    iget-object v1, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-direct {p0, v0}, Labcd/eI;->j6(Labcd/yE;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-direct {p0, v0}, Labcd/eI;->j6(Labcd/yE;)V

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Labcd/eI;->j6(Labcd/yE;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method static synthetic we()[I
    .registers 3

    sget-object v0, Labcd/eI;->aM:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/DI$a;->values()[Labcd/DI$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/DI$a;->DW:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Labcd/DI$a;->Hw:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Labcd/DI$a;->FH:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Labcd/DI$a;->v5:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Labcd/DI$a;->j6:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Labcd/eI;->aM:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Labcd/eI;->J8()V

    invoke-direct {p0, p2}, Labcd/eI;->j6(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Labcd/eI;->j6(Ljava/util/Set;I)V

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/RK$c;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Labcd/RK$c;-><init>(I)V

    iput-object v0, p0, Labcd/eI;->SI:Labcd/RK$c;

    new-instance v0, Labcd/EI;

    iget-object v1, p0, Labcd/eI;->SI:Labcd/RK$c;

    invoke-direct {v0, v1}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Labcd/eI;->KD:Labcd/EI;

    :cond_0
    invoke-direct {p0, p2}, Labcd/eI;->DW(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/eI;->j6(Labcd/LE;)V

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->v5()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/eI;->Mr:Labcd/eG;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/eI;->SI:Labcd/RK$c;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/eI;->KD:Labcd/EI;

    invoke-direct {p0, p1}, Labcd/eI;->DW(Labcd/LE;)V
    :try_end_0
    .catch Labcd/eI$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/eI;->close()V

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/eI;->close()V

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Labcd/eI;->close()V

    goto :goto_0
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/eI;->nw:Labcd/kH;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    invoke-super {p0}, Labcd/cI;->close()V

    return-void
.end method

.method public final j6(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/aI;->gn()V

    invoke-virtual {p0, p1, p2, p3}, Labcd/eI;->DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/eI;->ei:Ljava/lang/String;

    return-void
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
