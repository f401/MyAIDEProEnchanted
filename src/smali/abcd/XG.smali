.class public Labcd/XG;
.super Labcd/GG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/XG$a;,
        Labcd/XG$b;
    }
.end annotation


# static fields
.field private static final j6:Labcd/XG$b;


# instance fields
.field private final DW:Labcd/gE;

.field private final EQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Labcd/GG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/io/File;

.field private final Hw:Ljava/io/File;

.field private final VH:Ljava/io/File;

.field private final Zo:Ljava/io/File;

.field private final gn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labcd/XG$b;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Labcd/pK;

.field private final u7:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labcd/XG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/io/File;

.field private final we:Labcd/tH;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/XG$b;

    sget-object v1, Labcd/LG;->j6:Labcd/LG;

    const/4 v2, 0x0

    new-array v2, v2, [Labcd/aH;

    invoke-direct {v0, v1, v2}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    sput-object v0, Labcd/XG;->j6:Labcd/XG$b;

    return-void
.end method

.method public constructor <init>(Labcd/gE;Ljava/io/File;[Ljava/io/File;Labcd/pK;)V
    .registers 8

    invoke-direct {p0}, Labcd/GG;-><init>()V

    iput-object p1, p0, Labcd/XG;->DW:Labcd/gE;

    iput-object p2, p0, Labcd/XG;->FH:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/XG;->FH:Ljava/io/File;

    const-string v2, "info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/XG;->Hw:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/XG;->FH:Ljava/io/File;

    const-string v2, "pack"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/XG;->Hw:Ljava/io/File;

    const-string v2, "alternates"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/XG;->Zo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/XG;->Hw:Ljava/io/File;

    const-string v2, "cached-packs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/XG;->VH:Ljava/io/File;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Labcd/XG;->j6:Labcd/XG$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/XG;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Labcd/tH;

    invoke-direct {v0}, Labcd/tH;-><init>()V

    iput-object v0, p0, Labcd/XG;->we:Labcd/tH;

    iput-object p4, p0, Labcd/XG;->tp:Labcd/pK;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_0

    array-length v0, p3

    new-array v1, v0, [Labcd/GG$a;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    aget-object v2, p3, v0

    invoke-direct {p0, v2}, Labcd/XG;->DW(Ljava/io/File;)Labcd/GG$a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DW(Ljava/io/File;)Labcd/GG$a;
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-static {v0, v1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Labcd/GG$b;

    iget-object v2, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-static {v0, v2}, Labcd/WE$a;->j6(Ljava/io/File;Labcd/pK;)Labcd/WE$a;

    move-result-object v0

    invoke-static {v0}, Labcd/WE;->j6(Labcd/WE$b;)Labcd/UE;

    move-result-object v0

    check-cast v0, Labcd/IG;

    invoke-direct {v1, v0}, Labcd/GG$b;-><init>(Labcd/IG;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/GG$a;

    new-instance v1, Labcd/XG;

    iget-object v2, p0, Labcd/XG;->DW:Labcd/gE;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-direct {v1, v2, p1, v3, v4}, Labcd/XG;-><init>(Labcd/gE;Ljava/io/File;[Ljava/io/File;Labcd/pK;)V

    invoke-direct {v0, v1}, Labcd/GG$a;-><init>(Labcd/GG;)V

    goto :goto_0
.end method

.method private DW(Labcd/XG$b;)Labcd/XG$b;
    .registers 6

    iget-object v2, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    if-eq v0, p1, :cond_1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Labcd/XG;->FH(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v1

    if-ne v1, v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private DW(Labcd/aH;)V
    .registers 9

    const/4 v6, 0x0

    :cond_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-static {v1, p1}, Labcd/XG;->j6([Labcd/aH;Labcd/aH;)I

    move-result v2

    if-gez v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Labcd/aH;->DW()V

    return-void

    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Labcd/aH;

    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x1

    array-length v5, v3

    sub-int/2addr v5, v2

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Labcd/XG$b;

    iget-object v2, v0, Labcd/XG$b;->j6:Labcd/LG;

    invoke-direct {v1, v2, v3}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    iget-object v2, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private FH(Labcd/XG$b;)Labcd/XG$b;
    .registers 13

    const/4 v3, 0x0

    invoke-static {p1}, Labcd/XG;->j6(Labcd/XG$b;)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v5

    invoke-direct {p0}, Labcd/XG;->Ws()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v2, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Labcd/XG$b;->j6:Labcd/LG;

    invoke-virtual {v5, v0}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Labcd/XG$b;->j6:Labcd/LG;

    invoke-virtual {v0, v5}, Labcd/LG;->DW(Labcd/LG;)V

    :goto_1
    return-object p1

    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Labcd/XG$b;

    sget-object v0, Labcd/XG;->j6:Labcd/XG$b;

    iget-object v0, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-direct {p1, v5, v0}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/aH;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/aH;

    sget-object v1, Labcd/aH;->j6:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p1, Labcd/XG$b;

    invoke-direct {p1, v5, v0}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/aH;

    invoke-virtual {v0}, Labcd/aH;->DW()V

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x31

    if-ne v1, v9, :cond_0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".pack"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/aH;

    if-eqz v1, :cond_5

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-direct {v1, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Labcd/aH;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v9, v1}, Labcd/aH;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_0
.end method

.method private Hw(Ljava/lang/String;)Labcd/GG$a;
    .registers 4

    iget-object v0, p0, Labcd/XG;->tp:Labcd/pK;

    iget-object v1, p0, Labcd/XG;->FH:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/XG;->DW(Ljava/io/File;)Labcd/GG$a;

    move-result-object v0

    return-object v0
.end method

.method private QX()[Labcd/GG$a;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/XG;->Zo:Ljava/io/File;

    invoke-static {v1}, Labcd/XG;->j6(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Labcd/GG$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Labcd/XG;->Hw(Ljava/lang/String;)Labcd/GG$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method private Ws()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    array-length v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const-string v5, "pack-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static j6([Labcd/aH;Labcd/aH;)I
    .registers 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-object v1, p0, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private j6(Labcd/XG$a;)Labcd/XG$a;
    .registers 12

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-static {v1}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v4

    :try_start_0
    iget-object v1, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-static {v1}, Labcd/BK;->j6(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p1, Labcd/XG$a;->j6:Labcd/LG;

    invoke-virtual {v1, v4}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Labcd/XG$a;->FH:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Labcd/XG$a;->j6:Labcd/LG;

    invoke-virtual {v0, v4}, Labcd/LG;->DW(Labcd/LG;)V

    :goto_1
    return-object p1

    :catch_0
    move-exception v1

    new-array v1, v0, [B

    move-object v3, v1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_2
    array-length v2, v3

    if-lt v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    new-instance p1, Labcd/XG$a;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v4, v0, v3}, Labcd/XG$a;-><init>(Labcd/LG;Ljava/util/List;[B)V

    goto :goto_1

    :cond_2
    aget-byte v2, v3, v0

    const/16 v6, 0x23

    if-eq v2, v6, :cond_3

    aget-byte v2, v3, v0

    if-ne v2, v9, :cond_4

    :cond_3
    invoke-static {v3, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    goto :goto_2

    :cond_4
    aget-byte v2, v3, v0

    const/16 v6, 0x2b

    if-ne v2, v6, :cond_5

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    array-length v2, v3

    if-ge v0, v2, :cond_6

    aget-byte v2, v3, v0

    const/16 v7, 0x50

    if-eq v2, v7, :cond_7

    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Labcd/QG;

    invoke-direct {v2, p0, v1, v6}, Labcd/QG;-><init>(Labcd/XG;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    :cond_7
    invoke-static {v3, v0}, Labcd/IK;->Zo([BI)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v3, v7

    if-ne v7, v9, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v2}, Labcd/IK;->Zo([BI)I

    move-result v0

    goto :goto_3
.end method

.method private static j6(Ljava/io/File;)Ljava/io/BufferedReader;
    .registers 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private static j6(Labcd/XG$b;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XG$b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/aH;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v1

    invoke-virtual {v5}, Labcd/aH;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Labcd/aH;->DW()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/aH;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Labcd/aH;->DW()V

    goto :goto_1
.end method

.method private j6(Labcd/aH;)V
    .registers 10

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v3, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-virtual {p1}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_3

    :cond_1
    array-length v1, v3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Labcd/aH;

    aput-object p1, v1, v2

    const/4 v4, 0x1

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Labcd/XG$b;

    iget-object v4, v0, Labcd/XG$b;->j6:Labcd/LG;

    invoke-direct {v3, v4, v1}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    iget-object v1, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void

    :cond_3
    aget-object v6, v3, v1

    sget-object v7, Labcd/aH;->j6:Ljava/util/Comparator;

    invoke-interface {v7, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v6}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method DW(Labcd/wH;Labcd/YD;)J
    .registers 11

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_0
    iget-object v4, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_0

    const-wide/16 v0, -0x1

    :goto_2
    return-wide v0

    :cond_0
    aget-object v2, v4, v1

    :try_start_0
    invoke-virtual {v2, p1, p2}, Labcd/aH;->DW(Labcd/wH;Labcd/YD;)J
    :try_end_0
    .catch Labcd/mD; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v2

    if-gtz v6, :cond_1

    move-wide v0, v2

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-direct {p0, v2}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_0
.end method

.method public DW(Labcd/YD;)Ljava/io/File;
    .registers 3

    invoke-super {p0, p1}, Labcd/GG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public DW()Z
    .registers 2

    iget-object v0, p0, Labcd/XG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method DW(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method EQ()Labcd/GG;
    .registers 2

    new-instance v0, Labcd/DG;

    invoke-direct {v0, p0}, Labcd/DG;-><init>(Labcd/XG;)V

    return-object v0
.end method

.method FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
    .registers 7

    :try_start_0
    invoke-virtual {p0, p2}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v2, p3}, Labcd/tH;->j6(Labcd/YD;)V

    invoke-static {v1, v0, p3, p1}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p3}, Labcd/tH;->FH(Labcd/YD;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FH()Labcd/xE;
    .registers 2

    invoke-virtual {p0}, Labcd/XG;->EQ()Labcd/GG;

    move-result-object v0

    return-object v0
.end method

.method FH(Labcd/YD;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p1}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v3, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v4, v3

    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    aget-object v5, v3, v0

    :try_start_0
    invoke-virtual {v5, p1}, Labcd/aH;->j6(Labcd/YD;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-direct {p0, v5}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public Hw()Labcd/YG;
    .registers 3

    new-instance v0, Labcd/YG;

    iget-object v1, p0, Labcd/XG;->DW:Labcd/gE;

    invoke-direct {v0, p0, v1}, Labcd/YG;-><init>(Labcd/GG;Labcd/gE;)V

    return-object v0
.end method

.method public J0()V
    .registers 2

    iget-object v0, p0, Labcd/XG;->FH:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->FH(Ljava/io/File;)V

    iget-object v0, p0, Labcd/XG;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    return-void
.end method

.method public J8()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/aH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    sget-object v1, Labcd/XG;->j6:Labcd/XG$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    :cond_0
    iget-object v0, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method VH()Labcd/gE;
    .registers 2

    iget-object v0, p0, Labcd/XG;->DW:Labcd/gE;

    return-object v0
.end method

.method Zo()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/XG;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$a;

    if-eqz v0, :cond_0

    iget-object v2, v0, Labcd/XG$a;->j6:Labcd/LG;

    iget-object v3, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-virtual {v2, v3}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Labcd/XG;->j6(Labcd/XG$a;)Labcd/XG$a;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Labcd/XG$a;->j6()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v2, v1

    :goto_0
    if-lt v4, v6, :cond_2

    return-object v0

    :cond_2
    aget-object v1, v5, v4

    invoke-virtual {v1}, Labcd/GG$a;->DW()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    move-object v0, v3

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final gn()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/XG;->FH:Ljava/io/File;

    return-object v0
.end method

.method j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
    .registers 7

    :try_start_0
    invoke-virtual {p0, p2}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2, p3, p1}, Labcd/sH;->j6(Ljava/io/InputStream;Labcd/YD;Labcd/wH;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
    .registers 6

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object v0, Labcd/GG$c;->FH:Labcd/GG$c;

    :goto_0
    return-object v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object v0, Labcd/GG$c;->DW:Labcd/GG$c;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Labcd/XG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object v0, Labcd/GG$c;->FH:Labcd/GG$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->j6(Labcd/YD;)V

    sget-object v0, Labcd/GG$c;->j6:Labcd/GG$c;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Labcd/zK;->DW(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->j6(Labcd/YD;)V

    sget-object v0, Labcd/GG$c;->j6:Labcd/GG$c;

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p0, p2}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object v0, Labcd/GG$c;->DW:Labcd/GG$c;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object v0, Labcd/GG$c;->Hw:Labcd/GG$c;

    goto :goto_0
.end method

.method public j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
    .registers 10

    const/16 v6, 0x2d

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    const-string v2, "pack-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".pack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    const-string v2, "pack-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/aH;

    invoke-direct {v0, p2, p1}, Labcd/aH;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Labcd/XG;->j6(Labcd/aH;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packDoesNotMatchIndex:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAValidPack:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAValidPack:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0}, Labcd/tH;->j6()V

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v2, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Labcd/XG;->j6:Labcd/XG$b;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    array-length v2, v0

    :goto_1
    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Labcd/GG$a;->j6()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4}, Labcd/aH;->DW()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method j6(Labcd/TH;Labcd/MH;Labcd/wH;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_0
    iget-object v3, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v1, v2, v0

    iget-object v1, v1, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v1, p1, p2, p3}, Labcd/GG;->j6(Labcd/TH;Labcd/MH;Labcd/wH;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    aget-object v5, v3, v2

    :try_start_0
    invoke-virtual {v5, p3, p2}, Labcd/aH;->FH(Labcd/wH;Labcd/YD;)Labcd/SG;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, p2, v6}, Labcd/TH;->j6(Labcd/MH;Labcd/UH;)V
    :try_end_0
    .catch Labcd/mD; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-direct {p0, v5}, Labcd/XG;->DW(Labcd/aH;)V

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_0
.end method

.method j6(Ljava/util/Set;Labcd/WD;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x100

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_0
    iget-object v4, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v5, v4

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_9

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v0, v1, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p2}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    move v0, v2

    :goto_2
    if-lt v0, v4, :cond_4

    :cond_1
    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_3
    if-lt v0, v3, :cond_8

    :cond_2
    :goto_4
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x26

    if-eq v6, v7, :cond_6

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v5

    invoke-virtual {p2, v5}, Labcd/WD;->DW(Labcd/YD;)I

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v8, :cond_5

    goto :goto_4

    :cond_8
    aget-object v2, v1, v0

    iget-object v2, v2, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v2, p1, p2}, Labcd/GG;->j6(Ljava/util/Set;Labcd/WD;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    aget-object v6, v4, v1

    const/16 v7, 0x100

    :try_start_1
    invoke-virtual {v6, p1, p2, v7}, Labcd/aH;->j6(Ljava/util/Set;Labcd/WD;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    if-gt v6, v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    invoke-direct {p0, v6}, Labcd/XG;->DW(Labcd/aH;)V

    goto :goto_6

    :catch_1
    move-exception v5

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectDirectory["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tp()[Labcd/GG$a;
    .registers 4

    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;

    if-nez v0, :cond_1

    iget-object v1, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Labcd/XG;->QX()[Labcd/GG$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v2, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Labcd/GG$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method u7()Labcd/pK;
    .registers 2

    iget-object v0, p0, Labcd/XG;->tp:Labcd/pK;

    return-object v0
.end method

.method v5(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 9

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->FH(Labcd/YD;)V

    :cond_1
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_1
    iget-object v3, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-lt v2, v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    aget-object v1, v3, v2

    :try_start_0
    invoke-virtual {v1, p1, p2}, Labcd/aH;->j6(Labcd/wH;Labcd/YD;)Labcd/FE;
    :try_end_0
    .catch Labcd/mD; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-direct {p0, v1}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_1
.end method

.method we()Z
    .registers 4

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v1, v0, Labcd/XG$b;->j6:Labcd/LG;

    iget-object v2, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-virtual {v1, v2}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
