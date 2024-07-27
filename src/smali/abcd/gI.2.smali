.class public abstract Labcd/gI;
.super Labcd/cI;

# interfaces
.implements Labcd/LI;


# instance fields
.field private Mr:Z

.field private U2:Z

.field private a8:Z

.field private final aM:Z

.field private er:J

.field private j3:Z

.field private lg:Z

.field private rN:Z


# direct methods
.method public constructor <init>(Labcd/BI;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/cI;-><init>(Labcd/BI;)V

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->J8()Z

    move-result v0

    iput-boolean v0, p0, Labcd/gI;->aM:Z

    return-void
.end method

.method private DW(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v1, -0x1

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Labcd/gI;->we()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unpack "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_0
    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v2, v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v2

    sget-object v3, Labcd/YI$a;->gn:Labcd/YI$a;

    if-ne v2, v3, :cond_0

    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->expectedReportForRefNotReceived:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v6, v3, v5

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "ok "

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v4

    :goto_1
    if-eq v0, v1, :cond_8

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    move-object v2, v0

    :goto_2
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    sget-object v2, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v0, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0

    :cond_3
    const-string v0, "ng "

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " "

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    sget-object v3, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0, v2}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedRefReport:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v3, v2, v5

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedReportLine2:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v6, v3, v5

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->errorOccurredDuringUnpackingOnTheRemoteEnd:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Labcd/nD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unexpectedReportLine:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Labcd/LE;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report-status"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/gI;->Mr:Z

    const-string v1, "delete-refs"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/gI;->j3:Z

    const-string v1, "ofs-delta"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/gI;->a8:Z

    const-string v1, "side-band-64k"

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Labcd/gI;->U2:Z

    iget-boolean v1, p0, Labcd/gI;->U2:Z

    if-eqz v1, :cond_0

    new-instance v1, Labcd/_I;

    iget-object v2, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-virtual {p0}, Labcd/aI;->VH()Ljava/io/Writer;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Labcd/_I;-><init>(Ljava/io/InputStream;Labcd/LE;Ljava/io/Writer;)V

    iput-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    new-instance v1, Labcd/DI;

    iget-object v2, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Labcd/cI;->we:Labcd/DI;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v4, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/util/Collection;Labcd/LE;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    const/16 v6, 0x20

    const/4 v5, 0x1

    invoke-direct {p0, p2}, Labcd/gI;->j6(Labcd/LE;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/cI;->J8:Z

    return-void

    :cond_1
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->pushCancelled:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    iget-boolean v1, p0, Labcd/gI;->j3:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Labcd/YI;->VH()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Labcd/YI$a;->Hw:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/aI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Labcd/gI;->lg:Z

    if-nez v1, :cond_4

    iput-boolean v5, p0, Labcd/gI;->lg:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/EI;->j6(Ljava/lang/String;)V

    sget-object v1, Labcd/YI$a;->gn:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Labcd/YI;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v5, p0, Labcd/gI;->rN:Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    goto :goto_1
.end method

.method private j6(Ljava/util/Map;Labcd/LE;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Labcd/TH;

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->Zo()Labcd/NH;

    move-result-object v0

    iget-object v4, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    :try_start_0
    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/cI;->XL:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Labcd/TH;->v5(Z)V

    iget-boolean v0, p0, Labcd/gI;->aM:Z

    invoke-virtual {v3, v0}, Labcd/TH;->Hw(Z)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Labcd/TH;->FH(Z)V

    iget-boolean v0, p0, Labcd/gI;->a8:Z

    invoke-virtual {v3, v0}, Labcd/TH;->j6(Z)V

    invoke-virtual {v3, p2, v2, v1}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v3, p2, p2, v0}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Labcd/TH;->VH()V

    invoke-virtual {v3}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object v0

    invoke-virtual {v0}, Labcd/TH$c;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/gI;->er:J

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v5

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Labcd/TH;->VH()V

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private we()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Labcd/cI;->VH:Labcd/_K;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/_K;->j6()I

    move-result v1

    iget-wide v2, p0, Labcd/gI;->er:J

    const-wide/32 v4, 0x1b77400

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    :try_start_0
    iget-object v2, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Labcd/_K;->j6(I)V

    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-virtual {v2, v1}, Labcd/_K;->j6(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-virtual {v2, v1}, Labcd/_K;->j6(I)V

    throw v0
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Labcd/gI;->j6(Ljava/util/Collection;Labcd/LE;)V

    iget-boolean v0, p0, Labcd/gI;->rN:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Labcd/gI;->j6(Ljava/util/Map;Labcd/LE;)V

    :cond_0
    iget-boolean v0, p0, Labcd/gI;->lg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Labcd/gI;->Mr:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Labcd/gI;->DW(Ljava/util/Map;)V

    :cond_1
    iget-boolean v0, p0, Labcd/gI;->U2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Labcd/cI;->close()V

    return-void

    :cond_3
    :try_start_1
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Labcd/yD; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Labcd/cI;->close()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public j6(Labcd/LE;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/aI;->gn()V

    invoke-virtual {p0, p1, p2}, Labcd/gI;->DW(Labcd/LE;Ljava/util/Map;)V

    return-void
.end method

.method protected tp()Labcd/yD;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->QX()Labcd/nI;

    move-result-object v0

    invoke-interface {v0}, Labcd/iI;->close()V
    :try_end_0
    .catch Labcd/jD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/hD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->pushNotPermitted:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method
