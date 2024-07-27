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
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/HJ;


# direct methods
.method constructor <init>(Labcd/SJ;Labcd/RJ;)V
    .registers 5

    invoke-direct {p0}, Labcd/aI;-><init>()V

    check-cast p1, Labcd/jJ;

    iput-object p1, p0, Labcd/QJ;->VH:Labcd/jJ;

    iget-object v0, p0, Labcd/QJ;->VH:Labcd/jJ;

    iget-object v1, v0, Labcd/jJ;->v5:Labcd/UE;

    iput-object v1, p0, Labcd/QJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    iput-object v0, p0, Labcd/QJ;->v5:Labcd/HJ;

    iput-object p2, p0, Labcd/QJ;->Zo:Labcd/RJ;

    return-void
.end method

.method private static DW(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/YI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    const-string v2, "refs/heads/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    const-string v2, "refs/heads/master"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v0, p1}, Labcd/RJ;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/QJ;)Labcd/RJ;
    .registers 2

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    return-object v0
.end method

.method private j6(Labcd/YI;)V
    .registers 4

    iget-object v0, p0, Labcd/QJ;->u7:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-nez v0, :cond_0

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ME$a;->Zo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ME$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RJ;->DW(Ljava/lang/String;)V

    sget-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Labcd/YI$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {p1}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RJ;->FH(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {p1, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private j6(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ref: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Labcd/QJ;->DW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    const-string v2, "../HEAD"

    invoke-virtual {v1, v2, v0}, Labcd/RJ;->j6(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "[core]\n\trepositoryformatversion = 0\n"

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    const-string v2, "../config"

    invoke-virtual {v1, v2, v0}, Labcd/RJ;->j6(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotCreateConfig:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotCreateHEAD:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Ljava/util/List;Labcd/LE;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/YI;",
            ">;",
            "Labcd/LE;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v5, Labcd/TH;

    iget-object v0, p0, Labcd/QJ;->VH:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->Zo()Labcd/NH;

    move-result-object v0

    iget-object v2, p0, Labcd/QJ;->Hw:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Labcd/aI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5, p2, v2, v3}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v5}, Labcd/TH;->Hw()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    invoke-virtual {v5}, Labcd/TH;->VH()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v0}, Labcd/RJ;->FH()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pack-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/TH;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pack/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pack/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".idx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :try_start_3
    iget-object v1, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    iget-object v2, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RJ;->j6(Ljava/util/Collection;)V

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v1, v3}, Labcd/RJ;->j6(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Put "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v7, 0xc

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "..pack"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, p2, v2}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    :try_start_4
    new-instance v1, Labcd/XK;

    invoke-direct {v1, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v5, p2, p2, v1}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v1}, Labcd/XK;->close()V

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..idx"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, p2, v0}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    :try_start_7
    new-instance v1, Labcd/XK;

    invoke-direct {v1, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v5, v1}, Labcd/TH;->j6(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v1}, Labcd/XK;->close()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v1, v0}, Labcd/RJ;->j6(Ljava/util/Collection;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {v5}, Labcd/TH;->VH()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_5
    move-object v2, v1

    move-object v3, v4

    :goto_6
    :try_start_b
    invoke-direct {p0, v2}, Labcd/QJ;->DW(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Labcd/QJ;->DW(Ljava/lang/String;)V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotStoreObjects:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Labcd/TH;->VH()V

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_7
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_3
    :try_start_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_6

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5
.end method

.method private u7()Z
    .registers 2

    invoke-virtual {p0}, Labcd/aI;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/QJ;->gn:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/QJ;->Zo:Labcd/RJ;

    invoke-virtual {v0}, Labcd/RJ;->j6()V

    return-void
.end method

.method public j6(Labcd/LE;Ljava/util/Map;)V
    .registers 8
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p1}, Labcd/QJ;->j6(Ljava/util/List;Labcd/LE;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/QJ;->u7()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Labcd/QJ;->j6(Ljava/util/List;)V

    :cond_1
    new-instance v1, Labcd/PJ;

    iget-object v0, p0, Labcd/QJ;->u7:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Labcd/PJ;-><init>(Labcd/QJ;Ljava/util/Collection;)V

    iget-object v0, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Labcd/SE;->DW()V

    iget-object v0, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Labcd/SE;->j6()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    sget-object v3, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Labcd/YI$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Labcd/QJ;->tp:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    sget-object v3, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v0, Labcd/yD;

    iget-object v2, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->failedUpdatingRefs:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/QJ;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->failedUpdatingRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-direct {p0, v0}, Labcd/QJ;->DW(Labcd/YI;)V

    goto/16 :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refs/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    sget-object v3, Labcd/YI$a;->Zo:Labcd/YI$a;

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Labcd/YI$a;)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->funnyRefname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Labcd/YI;->j6(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, v0}, Labcd/QJ;->j6(Labcd/YI;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
