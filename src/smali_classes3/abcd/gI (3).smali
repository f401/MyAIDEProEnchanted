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
    .registers 2

    invoke-direct {p0, p1}, Labcd/cI;-><init>(Labcd/BI;)V

    iget-object p1, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {p1}, Labcd/jJ;->J8()Z

    move-result p1

    iput-boolean p1, p0, Labcd/gI;->aM:Z

    return-void
.end method

.method private DW(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/gI;->we()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unpack "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f2

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    :goto_1b
    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labcd/DI;->j6:Ljava/lang/String;

    const/4 v4, 0x2

    if-ne v0, v1, :cond_60

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v1

    sget-object v5, Labcd/YI$a;->gn:Labcd/YI$a;

    if-eq v1, v5, :cond_44

    goto :goto_2e

    :cond_44
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->expectedReportForRefNotReceived:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v5, v4, v2

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    const-string v1, "ok "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x1

    goto :goto_81

    :cond_70
    const-string v1, "ng "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string v1, " "

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_80

    :cond_7f
    const/4 v1, -0x1

    :goto_80
    const/4 v7, 0x0

    :goto_81
    if-eq v1, v6, :cond_c4

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_8b

    const/4 v0, 0x0

    goto :goto_91

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    if-eqz v1, :cond_ac

    if-eqz v7, :cond_a2

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto/16 :goto_1b

    :cond_a2
    sget-object v4, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v1, v4}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_ac
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unexpectedRefReport:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v4, v1, v2

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c4
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedReportLine2:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/cI;->v5:Labcd/HJ;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dc
    new-instance p1, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->errorOccurredDuringUnpackingOnTheRemoteEnd:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :cond_f2
    new-instance p1, Labcd/nD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->unexpectedReportLine:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    goto :goto_109

    :goto_108
    throw p1

    :goto_109
    goto :goto_108
.end method

.method private j6(Labcd/LE;)Ljava/lang/String;
    .registers 6

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

    if-eqz v1, :cond_3d

    new-instance v1, Labcd/_I;

    iget-object v2, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-virtual {p0}, Labcd/aI;->VH()Ljava/io/Writer;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Labcd/_I;-><init>(Ljava/io/InputStream;Labcd/LE;Ljava/io/Writer;)V

    iput-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    new-instance p1, Labcd/DI;

    iget-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/cI;->we:Labcd/DI;

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_47

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/util/Collection;Labcd/LE;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Labcd/gI;->j6(Labcd/LE;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-interface {p2}, Labcd/LE;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {p1}, Labcd/EI;->j6()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/cI;->J8:Z

    return-void

    :cond_1d
    new-instance p1, Labcd/yD;

    iget-object p2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->pushCancelled:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    iget-boolean v2, p0, Labcd/gI;->j3:Z

    if-nez v2, :cond_41

    invoke-virtual {v1}, Labcd/YI;->VH()Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Labcd/YI$a;->Hw:Labcd/YI$a;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_8

    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Labcd/aI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-nez v3, :cond_55

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    goto :goto_59

    :cond_55
    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    :goto_59
    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Labcd/gI;->lg:Z

    const/4 v4, 0x1

    if-nez v3, :cond_84

    iput-boolean v4, p0, Labcd/gI;->lg:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    iget-object v3, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/EI;->j6(Ljava/lang/String;)V

    sget-object v2, Labcd/YI$a;->gn:Labcd/YI$a;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v1}, Labcd/YI;->VH()Z

    move-result v1

    if-nez v1, :cond_8

    iput-boolean v4, p0, Labcd/gI;->rN:Z

    goto/16 :goto_8
.end method

.method private j6(Ljava/util/Map;Labcd/LE;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Labcd/TH;

    iget-object v3, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v3}, Labcd/jJ;->Zo()Labcd/NH;

    move-result-object v3

    iget-object v4, p0, Labcd/cI;->Hw:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    :try_start_1b
    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_80

    iget-object v3, p0, Labcd/cI;->XL:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_64

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Labcd/TH;->v5(Z)V

    iget-boolean p1, p0, Labcd/gI;->aM:Z

    invoke-virtual {v2, p1}, Labcd/TH;->Hw(Z)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Labcd/TH;->FH(Z)V

    iget-boolean p1, p0, Labcd/gI;->a8:Z

    invoke-virtual {v2, p1}, Labcd/TH;->j6(Z)V

    invoke-virtual {v2, p2, v1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v2, p2, p2, p1}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_8e

    invoke-virtual {v2}, Labcd/TH;->VH()V

    invoke-virtual {v2}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object p1

    invoke-virtual {p1}, Labcd/TH$c;->DW()J

    move-result-wide p1

    iput-wide p1, p0, Labcd/gI;->er:J

    return-void

    :cond_64
    :try_start_64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/YI;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v3}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ME;

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_64 .. :try_end_8d} :catchall_8e

    goto :goto_23

    :catchall_8e
    move-exception p1

    invoke-virtual {v2}, Labcd/TH;->VH()V

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method

.method private we()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Labcd/cI;->VH:Labcd/_K;

    if-nez v0, :cond_b

    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {v0}, Labcd/_K;->j6()I

    move-result v0

    iget-wide v1, p0, Labcd/gI;->er:J

    const-wide/32 v3, 0x1b77400

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    :try_start_19
    iget-object v1, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Labcd/_K;->j6(I)V

    iget-object v1, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v1}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_30

    iget-object v2, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-virtual {v2, v0}, Labcd/_K;->j6(I)V

    return-object v1

    :catchall_30
    move-exception v1

    iget-object v2, p0, Labcd/cI;->VH:Labcd/_K;

    invoke-virtual {v2, v0}, Labcd/_K;->j6(I)V

    throw v1
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Map<",
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

    if-eqz v0, :cond_e

    invoke-direct {p0, p2, p1}, Labcd/gI;->j6(Ljava/util/Map;Labcd/LE;)V

    :cond_e
    iget-boolean p1, p0, Labcd/gI;->lg:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Labcd/gI;->Mr:Z

    if-eqz p1, :cond_19

    invoke-direct {p0, p2}, Labcd/gI;->DW(Ljava/util/Map;)V

    :cond_19
    iget-boolean p1, p0, Labcd/gI;->U2:Z

    if-eqz p1, :cond_43

    iget-object p1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-gez p1, :cond_26

    goto :goto_43

    :cond_26
    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p2
    :try_end_43
    .catch Labcd/yD; {:try_start_0 .. :try_end_43} :catch_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_49
    .catchall {:try_start_0 .. :try_end_43} :catchall_47

    :cond_43
    :goto_43
    invoke-virtual {p0}, Labcd/cI;->close()V

    return-void

    :catchall_47
    move-exception p1

    goto :goto_58

    :catch_49
    move-exception p1

    :try_start_4a
    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_56
    move-exception p1

    throw p1
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_47

    :goto_58
    invoke-virtual {p0}, Labcd/cI;->close()V

    throw p1
.end method

.method public j6(Labcd/LE;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Map<",
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
    :try_end_9
    .catch Labcd/jD; {:try_start_0 .. :try_end_9} :catch_e
    .catch Labcd/hD; {:try_start_0 .. :try_end_9} :catch_c
    .catch Labcd/yD; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    goto :goto_f

    :catch_c
    move-exception v0

    return-object v0

    :catch_e
    move-exception v0

    :goto_f
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->pushNotPermitted:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object v0
.end method
