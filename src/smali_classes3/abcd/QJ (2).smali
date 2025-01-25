.class Labcd/QJ;
.super Labcd/aI;

# interfaces
.implements Labcd/LI;


# instance fields
.field private final Hw:Labcd/UE;

.field private final VH:Labcd/jJ;

.field private final Zo:Labcd/RJ;

.field private gn:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/HJ;


# direct methods
.method constructor <init>(Labcd/SJ;Labcd/RJ;)V
    .registers 4

    invoke-direct {p0}, Labcd/aI;-><init>()V

    check-cast p1, Labcd/jJ;

    iput-object p1, p0, Labcd/QJ;->VH:Labcd/jJ;

    iget-object v0, p1, Labcd/jJ;->v5:Labcd/UE;

    iput-object v0, p0, Labcd/QJ;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p1

    iput-object p1, p0, Labcd/QJ;->v5:Labcd/HJ;

    iput-object p2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    return-void
.end method

.method private static DW(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/YI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/YI;

    invoke-virtual {p0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    const-string v2, "refs/heads/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refs/heads/master"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1
.end method

.method private DW(Labcd/YI;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/yE;)V

    iget-object v0, p0, Labcd/QJ;->u7:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/BE$c;

    sget-object v3, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_38

    :catch_2b
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v0, p1}, Labcd/RJ;->j6(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    :cond_9
    :goto_9
    return-void
.end method

.method static synthetic j6(Labcd/QJ;)Labcd/RJ;
    .registers 1

    iget-object p0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    return-object p0
.end method

.method private j6(Labcd/YI;)V
    .registers 4

    iget-object v0, p0, Labcd/QJ;->u7:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-nez v0, :cond_14

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V

    return-void

    :cond_14
    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ME$a;->Zo()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ME$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_2d
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RJ;->DW(Ljava/lang/String;)V

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_49

    :catch_3c
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    :cond_49
    :goto_49
    :try_start_49
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RJ;->FH(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_60

    :catch_53
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    :goto_60
    return-void
.end method

.method private j6(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ref: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Labcd/QJ;->DW(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    const-string v1, "../HEAD"

    invoke-virtual {v0, v1, p1}, Labcd/RJ;->j6(Ljava/lang/String;[B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_3f

    :try_start_22
    const-string p1, "[core]\n\trepositoryformatversion = 0\n"

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    const-string v1, "../config"

    invoke-virtual {v0, v1, p1}, Labcd/RJ;->j6(Ljava/lang/String;[B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p1

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCreateConfig:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3f
    move-exception p1

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCreateHEAD:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private j6(Ljava/util/List;Labcd/LE;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    const-string v0, "pack/"

    new-instance v1, Labcd/TH;

    iget-object v2, p0, Labcd/QJ;->VH:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->Zo()Labcd/NH;

    move-result-object v2

    iget-object v3, p0, Labcd/QJ;->Hw:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    const/4 v2, 0x0

    :try_start_14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_170

    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_154

    invoke-virtual {v1, p2, v3, v4}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v1}, Labcd/TH;->Hw()J

    move-result-wide v3
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3d} :catch_181
    .catchall {:try_start_14 .. :try_end_3d} :catchall_17f

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_47

    invoke-virtual {v1}, Labcd/TH;->VH()V

    return-void

    :cond_47
    :try_start_47
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/RJ;->FH()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_147

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "pack-"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/TH;->FH()Labcd/yE;

    move-result-object v3

    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".pack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_92} :catch_181
    .catchall {:try_start_47 .. :try_end_92} :catchall_17f

    :try_start_92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".idx"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a3} :catch_145
    .catchall {:try_start_92 .. :try_end_a3} :catchall_17f

    :try_start_a3
    iget-object v2, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_bb

    iget-object v2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    iget-object v5, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Labcd/RJ;->j6(Ljava/util/Collection;)V

    iget-object v2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v2, v0}, Labcd/RJ;->j6(Ljava/lang/String;)V

    :cond_bb
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Put "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..pack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, p2, v5}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_e8} :catch_142
    .catchall {:try_start_a3 .. :try_end_e8} :catchall_17f

    :try_start_e8
    new-instance v5, Labcd/XK;

    invoke-direct {v5, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V
    :try_end_ed
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_13d

    :try_start_ed
    invoke-virtual {v1, p2, p2, v5}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_13a

    :try_start_f0
    invoke-virtual {v5}, Labcd/XK;->close()V

    iget-object v2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "..idx"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p2, p1}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_10b} :catch_142
    .catchall {:try_start_f0 .. :try_end_10b} :catchall_17f

    :try_start_10b
    new-instance p2, Labcd/XK;

    invoke-direct {p2, p1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V
    :try_end_110
    .catchall {:try_start_10b .. :try_end_110} :catchall_135

    :try_start_110
    invoke-virtual {v1, p2}, Labcd/TH;->j6(Ljava/io/OutputStream;)V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_130

    :try_start_113
    invoke-virtual {p2}, Labcd/XK;->close()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p2, p1}, Labcd/RJ;->j6(Ljava/util/Collection;)V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_12c} :catch_142
    .catchall {:try_start_113 .. :try_end_12c} :catchall_17f

    invoke-virtual {v1}, Labcd/TH;->VH()V

    return-void

    :catchall_130
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_136

    :catchall_135
    move-exception p2

    :goto_136
    :try_start_136
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p2

    :catchall_13a
    move-exception p1

    move-object v2, v5

    goto :goto_13e

    :catchall_13d
    move-exception p1

    :goto_13e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_142} :catch_142
    .catchall {:try_start_136 .. :try_end_142} :catchall_17f

    :catch_142
    move-exception p1

    move-object v2, v0

    goto :goto_183

    :catch_145
    move-exception p1

    goto :goto_183

    :cond_147
    :try_start_147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_58

    :cond_154
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/ME;

    invoke-interface {v5}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v6

    if-eqz v6, :cond_30

    invoke-interface {v5}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/YI;

    invoke-virtual {v5}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_17d} :catch_181
    .catchall {:try_start_147 .. :try_end_17d} :catchall_17f

    goto/16 :goto_22

    :catchall_17f
    move-exception p1

    goto :goto_197

    :catch_181
    move-exception p1

    move-object v4, v2

    :goto_183
    :try_start_183
    invoke-direct {p0, v2}, Labcd/QJ;->DW(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Labcd/QJ;->DW(Ljava/lang/String;)V

    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotStoreObjects:Ljava/lang/String;

    invoke-direct {p2, v0, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_197
    .catchall {:try_start_183 .. :try_end_197} :catchall_17f

    :goto_197
    invoke-virtual {v1}, Labcd/TH;->VH()V

    goto :goto_19c

    :goto_19b
    throw p1

    :goto_19c
    goto :goto_19b
.end method

.method private u7()Z
    .registers 2

    invoke-virtual {p0}, Labcd/aI;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v0}, Labcd/RJ;->j6()V

    return-void
.end method

.method public j6(Labcd/LE;Ljava/util/Map;)V
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

    invoke-virtual {p0}, Labcd/aI;->gn()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Labcd/aI;->FH()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Labcd/QJ;->u7:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_38

    invoke-direct {p0, v0, p1}, Labcd/QJ;->j6(Ljava/util/List;Labcd/LE;)V

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_51

    invoke-direct {p0}, Labcd/QJ;->u7()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-direct {p0, v0}, Labcd/QJ;->j6(Ljava/util/List;)V

    :cond_51
    new-instance p1, Labcd/PJ;

    iget-object p2, p0, Labcd/QJ;->u7:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Labcd/PJ;-><init>(Labcd/QJ;Ljava/util/Collection;)V

    iget-object p2, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ae

    :try_start_64
    invoke-virtual {p1}, Labcd/SE;->DW()V

    iget-object p2, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_ae

    :cond_74
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    sget-object v1, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7f} :catch_80

    goto :goto_6d

    :catch_80
    move-exception p1

    iget-object p2, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto :goto_87

    :cond_a0
    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->failedUpdatingRefs:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_ae
    :goto_ae
    :try_start_ae
    invoke-virtual {p1}, Labcd/SE;->j6()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    return-void

    :catch_b2
    move-exception p1

    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->failedUpdatingRefs:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_c1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/YI;

    invoke-direct {p0, p1}, Labcd/QJ;->DW(Labcd/YI;)V

    goto/16 :goto_3c

    :cond_cc
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refs/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fd

    invoke-static {v2}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e5

    goto :goto_fd

    :cond_e5
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-direct {p0, v1}, Labcd/QJ;->j6(Labcd/YI;)V

    goto/16 :goto_29

    :cond_f8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_fd
    :goto_fd
    sget-object v2, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->funnyRefname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto/16 :goto_29
.end method
