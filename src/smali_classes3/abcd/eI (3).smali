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
            "LeG<",
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

    sget-object p1, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object p1, p0, Labcd/eI;->er:Labcd/eI$c;

    iget-object p1, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    sget-object v0, Labcd/eI$b;->j6:Labcd/gE$b;

    invoke-virtual {p1, v0}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/eI$b;

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->VH()Labcd/eJ;

    move-result-object v0

    sget-object v1, Labcd/eJ;->DW:Labcd/eJ;

    if-eq v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Labcd/eI;->BT:Z

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->J0()Z

    move-result v0

    iput-boolean v0, p0, Labcd/eI;->yS:Z

    iget-boolean p1, p1, Labcd/eI$b;->DW:Z

    iput-boolean p1, p0, Labcd/eI;->vy:Z

    new-instance p1, Labcd/qG;

    iget-object v0, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-direct {p1, v0}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object p1, p0, Labcd/eI;->j3:Labcd/qG;

    new-instance v0, Labcd/eG;

    invoke-direct {v0}, Labcd/eG;-><init>()V

    iput-object v0, p0, Labcd/eI;->Mr:Labcd/eG;

    const-string v0, "REACHABLE"

    invoke-virtual {p1, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/eI;->U2:Labcd/fG;

    const-string v1, "COMMON"

    invoke-virtual {p1, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v1

    iput-object v1, p0, Labcd/eI;->a8:Labcd/fG;

    const-string v2, "STATE"

    invoke-virtual {p1, v2}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v2

    iput-object v2, p0, Labcd/eI;->lg:Labcd/fG;

    const-string v2, "ADVERTISED"

    invoke-virtual {p1, v2}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v2

    iput-object v2, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {p1, v1}, Labcd/qG;->j6(Labcd/fG;)V

    invoke-virtual {p1, v0}, Labcd/qG;->j6(Labcd/fG;)V

    invoke-virtual {p1, v2}, Labcd/qG;->j6(Labcd/fG;)V

    return-void
.end method

.method private DW(Labcd/LE;)V
    .registers 5

    iget-object v0, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    iget-boolean v1, p0, Labcd/eI;->gW:Z

    if-eqz v1, :cond_10

    new-instance v1, Labcd/_I;

    invoke-virtual {p0}, Labcd/aI;->VH()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Labcd/_I;-><init>(Ljava/io/InputStream;Labcd/LE;Ljava/io/Writer;)V

    move-object v0, v1

    :cond_10
    iget-object v1, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v1

    :try_start_16
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

    move-result-object p1

    iput-object p1, p0, Labcd/eI;->nw:Labcd/kH;

    invoke-virtual {v1}, Labcd/EE;->FH()V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_3a

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    return-void

    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    throw p1
.end method

.method private DW(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/eI;->KD:Labcd/EI;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    :goto_9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    if-eqz v2, :cond_19

    return v4

    :cond_19
    invoke-virtual {v0}, Labcd/EI;->j6()V

    iput-boolean v4, p0, Labcd/cI;->J8:Z

    return v1

    :cond_1f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    :try_start_25
    iget-object v5, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v5

    iget-object v6, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {v5, v6}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v5
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_35} :catch_38

    if-eqz v5, :cond_39

    goto :goto_f

    :catch_38
    move-exception v5

    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "want "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5a

    invoke-direct {p0}, Labcd/eI;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_5a
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private J0()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Labcd/eI;->BT:Z

    if-eqz v1, :cond_11

    const-string v1, "include-tag"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/eI;->BT:Z

    :cond_11
    iget-boolean v1, p0, Labcd/eI;->vy:Z

    if-eqz v1, :cond_1a

    const-string v1, "ofs-delta"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    :cond_1a
    const-string v1, "multi_ack_detailed"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Labcd/eI$c;->FH:Labcd/eI$c;

    iput-object v2, p0, Labcd/eI;->er:Labcd/eI$c;

    iget-boolean v2, p0, Labcd/cI;->Ws:Z

    if-eqz v2, :cond_42

    const-string v2, "no-done"

    invoke-virtual {p0, v0, v2}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Labcd/eI;->P8:Z

    goto :goto_42

    :cond_33
    const-string v2, "multi_ack"

    invoke-virtual {p0, v0, v2}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v2, Labcd/eI$c;->DW:Labcd/eI$c;

    goto :goto_40

    :cond_3e
    sget-object v2, Labcd/eI$c;->j6:Labcd/eI$c;

    :goto_40
    iput-object v2, p0, Labcd/eI;->er:Labcd/eI$c;

    :cond_42
    :goto_42
    iget-boolean v2, p0, Labcd/eI;->yS:Z

    if-eqz v2, :cond_4e

    const-string v2, "thin-pack"

    invoke-virtual {p0, v0, v2}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Labcd/eI;->yS:Z

    :cond_4e
    const-string v2, "side-band-64k"

    invoke-virtual {p0, v0, v2}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5a

    :goto_57
    iput-boolean v3, p0, Labcd/eI;->gW:Z

    goto :goto_63

    :cond_5a
    const-string v2, "side-band"

    invoke-virtual {p0, v0, v2}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_57

    :cond_63
    :goto_63
    iget-boolean v2, p0, Labcd/cI;->Ws:Z

    if-eqz v2, :cond_85

    iget-object v2, p0, Labcd/eI;->er:Labcd/eI$c;

    sget-object v4, Labcd/eI$c;->FH:Labcd/eI$c;

    if-ne v2, v4, :cond_6e

    goto :goto_85

    :cond_6e
    new-instance v0, Labcd/nD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->statelessRPCRequiresOptionToBeEnabled:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_85
    :goto_85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private J8()V
    .registers 4

    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/eI;->j6(Labcd/YD;)V

    invoke-interface {v1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/eI;->j6(Labcd/YD;)V

    goto :goto_8
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    :try_start_12
    iget-object v2, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    instance-of v2, v1, Labcd/dG;

    if-eqz v2, :cond_5

    check-cast v1, Labcd/dG;

    invoke-virtual {v1}, Labcd/dG;->U2()I

    move-result v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_2a

    if-ge v0, v1, :cond_5

    move v0, v1

    goto :goto_5

    :catch_2a
    move-exception v1

    goto :goto_5
.end method

.method private j6(Labcd/LE;)V
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Labcd/uE;

    invoke-direct {v1}, Labcd/uE;-><init>()V

    iget-boolean v2, v0, Labcd/cI;->Ws:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    iget-object v2, v0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v4, v0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v2, v4, v3}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Labcd/eI;->Ws()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1c
    iget-object v10, v0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v10}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-nez v10, :cond_2b

    :goto_28
    move v2, v7

    goto/16 :goto_d2

    :cond_2b
    iget-object v2, v0, Labcd/cI;->J0:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "have "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v10}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/EI;->j6(Ljava/lang/String;)V

    add-int/2addr v4, v15

    add-int/2addr v5, v15

    and-int/lit8 v2, v4, 0x1f

    if-eqz v2, :cond_51

    goto :goto_66

    :cond_51
    invoke-interface/range {p1 .. p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_13a

    iget-object v2, v0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v2}, Labcd/EI;->j6()V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x20

    if-ne v4, v2, :cond_68

    iget-boolean v2, v0, Labcd/cI;->Ws:Z

    if-nez v2, :cond_68

    :goto_66
    const/4 v3, 0x0

    goto :goto_1c

    :cond_68
    :goto_68
    iget-object v2, v0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v2, v1}, Labcd/DI;->j6(Labcd/uE;)Labcd/DI$a;

    move-result-object v2

    invoke-static {}, Labcd/eI;->we()[I

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v3, v3, v10

    if-eq v3, v15, :cond_b6

    if-eq v3, v14, :cond_a3

    if-eq v3, v13, :cond_84

    if-eq v3, v12, :cond_84

    const/4 v10, 0x5

    if-eq v3, v10, :cond_84

    goto :goto_95

    :cond_84
    iget-object v3, v0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v3, v1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Labcd/eI;->j6(Labcd/iG;Labcd/DI$a;)V

    sget-object v3, Labcd/DI$a;->v5:Labcd/DI$a;

    if-ne v2, v3, :cond_92

    const/4 v6, 0x1

    :cond_92
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_95
    invoke-interface/range {p1 .. p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9c

    goto :goto_68

    :cond_9c
    new-instance v1, Labcd/eI$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v1

    :cond_a3
    const/4 v2, 0x0

    sget-object v3, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v3, v0, Labcd/eI;->er:Labcd/eI$c;

    iget-boolean v3, v0, Labcd/cI;->Ws:Z

    if-eqz v3, :cond_b3

    iget-object v3, v0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v4, v0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_b3
    const/4 v2, 0x0

    const/4 v9, 0x1

    goto :goto_d2

    :cond_b6
    add-int/lit8 v7, v7, -0x1

    iget-boolean v2, v0, Labcd/eI;->P8:Z

    and-int/2addr v2, v6

    if-eqz v2, :cond_be

    goto :goto_d0

    :cond_be
    iget-boolean v2, v0, Labcd/cI;->Ws:Z

    if-eqz v2, :cond_ca

    iget-object v2, v0, Labcd/eI;->SI:Labcd/RK$c;

    iget-object v3, v0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :cond_ca
    if-eqz v8, :cond_136

    const/16 v2, 0x100

    if-le v5, v2, :cond_136

    :goto_d0
    goto/16 :goto_28

    :goto_d2
    invoke-interface/range {p1 .. p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_12f

    if-eqz v6, :cond_de

    iget-boolean v3, v0, Labcd/eI;->P8:Z

    if-nez v3, :cond_ea

    :cond_de
    iget-object v3, v0, Labcd/cI;->J0:Labcd/EI;

    const-string v4, "done\n"

    invoke-virtual {v3, v4}, Labcd/EI;->j6(Ljava/lang/String;)V

    iget-object v3, v0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v3}, Labcd/EI;->DW()V

    :cond_ea
    if-nez v9, :cond_f2

    sget-object v3, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v3, v0, Labcd/eI;->er:Labcd/eI$c;

    add-int/lit8 v2, v2, 0x1

    :cond_f2
    :goto_f2
    if-gtz v2, :cond_fb

    iget-object v3, v0, Labcd/eI;->er:Labcd/eI$c;

    sget-object v4, Labcd/eI$c;->j6:Labcd/eI$c;

    if-ne v3, v4, :cond_fb

    goto :goto_11f

    :cond_fb
    iget-object v3, v0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v3, v1}, Labcd/DI;->j6(Labcd/uE;)Labcd/DI$a;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Labcd/eI;->we()[I

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v15, :cond_120

    if-eq v3, v14, :cond_11f

    if-eq v3, v13, :cond_119

    if-eq v3, v12, :cond_119

    const/4 v4, 0x5

    if-eq v3, v4, :cond_11a

    goto :goto_121

    :cond_119
    const/4 v4, 0x5

    :cond_11a
    sget-object v3, Labcd/eI$c;->DW:Labcd/eI$c;

    iput-object v3, v0, Labcd/eI;->er:Labcd/eI$c;

    goto :goto_121

    :cond_11f
    :goto_11f
    return-void

    :cond_120
    const/4 v4, 0x5

    :goto_121
    invoke-interface/range {p1 .. p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_128

    goto :goto_f2

    :cond_128
    new-instance v1, Labcd/eI$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v1

    :cond_12f
    const/4 v2, 0x0

    new-instance v1, Labcd/eI$a;

    invoke-direct {v1, v2}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    throw v1

    :cond_136
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_1c

    :cond_13a
    const/4 v2, 0x0

    new-instance v1, Labcd/eI$a;

    invoke-direct {v1, v2}, Labcd/eI$a;-><init>(Labcd/eI$a;)V

    goto :goto_142

    :goto_141
    throw v1

    :goto_142
    goto :goto_141
.end method

.method private j6(Labcd/YD;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object p1

    iget-object v0, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception p1

    :goto_d
    return-void
.end method

.method private j6(Labcd/iG;Labcd/DI$a;)V
    .registers 4

    iget-boolean v0, p0, Labcd/cI;->Ws:Z

    if-eqz v0, :cond_36

    sget-object v0, Labcd/DI$a;->Hw:Labcd/DI$a;

    if-ne p2, v0, :cond_36

    iget-object p2, p0, Labcd/eI;->lg:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p2

    if-nez p2, :cond_36

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "have "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/eI;->KD:Labcd/EI;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Labcd/EI;->j6(Ljava/lang/String;)V

    iget-object p2, p0, Labcd/eI;->lg:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_36
    iget-object p2, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->j6(Labcd/fG;)V

    instance-of p2, p1, Labcd/dG;

    if-eqz p2, :cond_46

    check-cast p1, Labcd/dG;

    iget-object p2, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/dG;->FH(Labcd/fG;)V

    :cond_46
    return-void
.end method

.method private j6(Labcd/yE;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object p1

    iget-object v0, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Labcd/eI;->U2:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception p1

    :cond_1a
    :goto_1a
    return-void
.end method

.method private j6(Ljava/util/Set;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
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

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8f

    iget-object v0, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Hw()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7b

    if-lez p2, :cond_7a

    new-instance p1, Ljava/util/Date;

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iget-object p2, p0, Labcd/eI;->j3:Labcd/qG;

    sget-object v0, Labcd/kG;->DW:Labcd/kG;

    invoke-virtual {p2, v0}, Labcd/qG;->DW(Labcd/kG;)V

    iget-object p2, p0, Labcd/eI;->j3:Labcd/qG;

    iget-object v0, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {p2, v0}, Labcd/qG;->j6(Ljava/util/Collection;)V

    iget-object p2, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-static {p1}, Labcd/wG;->j6(Ljava/util/Date;)Labcd/yG;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/qG;->j6(Labcd/yG;)V

    :cond_51
    :goto_51
    iget-object p1, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->tp()Labcd/dG;

    move-result-object p1

    if-nez p1, :cond_5a

    goto :goto_7a

    :cond_5a
    iget-object p2, p0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p2, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p2

    if-nez p2, :cond_51

    iget-object p2, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object p2, p0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p1, p2}, Labcd/dG;->FH(Labcd/fG;)V

    iget-object p2, p0, Labcd/eI;->Mr:Labcd/eG;

    invoke-virtual {p2, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yE;

    invoke-direct {p0, p1}, Labcd/eI;->j6(Labcd/yE;)V

    goto :goto_28

    :cond_85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-direct {p0, v0}, Labcd/eI;->j6(Labcd/yE;)V

    goto :goto_1e

    :cond_8f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v2

    if-nez v2, :cond_9f

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    :cond_9f
    if-nez v2, :cond_a3

    goto/16 :goto_e

    :cond_a3
    invoke-direct {p0, v2}, Labcd/eI;->j6(Labcd/yE;)V

    goto/16 :goto_e
.end method

.method static synthetic we()[I
    .registers 3

    sget-object v0, Labcd/eI;->aM:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/DI$a;->values()[Labcd/DI$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/DI$a;->DW:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/DI$a;->Hw:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/DI$a;->FH:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/DI$a;->v5:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    sget-object v1, Labcd/DI$a;->j6:Labcd/DI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/eI;->aM:[I

    return-object v0
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Labcd/eI;->J8()V

    invoke-direct {p0, p2}, Labcd/eI;->j6(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Labcd/eI;->j6(Ljava/util/Set;I)V

    iget-boolean p3, p0, Labcd/cI;->Ws:Z

    if-eqz p3, :cond_21

    new-instance p3, Labcd/RK$c;

    const v0, 0x7fffffff

    invoke-direct {p3, v0}, Labcd/RK$c;-><init>(I)V

    iput-object p3, p0, Labcd/eI;->SI:Labcd/RK$c;

    new-instance p3, Labcd/EI;

    iget-object v0, p0, Labcd/eI;->SI:Labcd/RK$c;

    invoke-direct {p3, v0}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Labcd/eI;->KD:Labcd/EI;

    :cond_21
    invoke-direct {p0, p2}, Labcd/eI;->DW(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-direct {p0, p1}, Labcd/eI;->j6(Labcd/LE;)V

    iget-object p2, p0, Labcd/eI;->j3:Labcd/qG;

    invoke-virtual {p2}, Labcd/qG;->v5()V

    const/4 p2, 0x0

    iput-object p2, p0, Labcd/eI;->Mr:Labcd/eG;

    iput-object p2, p0, Labcd/eI;->SI:Labcd/RK$c;

    iput-object p2, p0, Labcd/eI;->KD:Labcd/EI;

    invoke-direct {p0, p1}, Labcd/eI;->DW(Labcd/LE;)V
    :try_end_39
    .catch Labcd/eI$a; {:try_start_0 .. :try_end_39} :catch_56
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_39} :catch_3a

    :cond_39
    return-void

    :catch_3a
    move-exception p1

    invoke-virtual {p0}, Labcd/eI;->close()V

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_48
    move-exception p1

    invoke-virtual {p0}, Labcd/eI;->close()V

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_56
    move-exception p1

    invoke-virtual {p0}, Labcd/eI;->close()V

    return-void
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/eI;->nw:Labcd/kH;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
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
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set<",
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
