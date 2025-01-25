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
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
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
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Labcd/XG$b;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Labcd/pK;

.field private final u7:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
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
    .registers 7

    invoke-direct {p0}, Labcd/GG;-><init>()V

    iput-object p1, p0, Labcd/XG;->DW:Labcd/gE;

    iput-object p2, p0, Labcd/XG;->FH:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string v0, "info"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Labcd/XG;->Hw:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "pack"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "alternates"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/XG;->Zo:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "cached-packs"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/XG;->VH:Ljava/io/File;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Labcd/XG;->j6:Labcd/XG$b;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Labcd/XG;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Labcd/tH;

    invoke-direct {p1}, Labcd/tH;-><init>()V

    iput-object p1, p0, Labcd/XG;->we:Labcd/tH;

    iput-object p4, p0, Labcd/XG;->tp:Labcd/pK;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_65

    array-length p1, p3

    new-array p1, p1, [Labcd/GG$a;

    const/4 p2, 0x0

    :goto_51
    array-length p4, p3

    if-lt p2, p4, :cond_5a

    iget-object p2, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_65

    :cond_5a
    aget-object p4, p3, p2

    invoke-direct {p0, p4}, Labcd/XG;->DW(Ljava/io/File;)Labcd/GG$a;

    move-result-object p4

    aput-object p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    :cond_65
    :goto_65
    return-void
.end method

.method private DW(Ljava/io/File;)Labcd/GG$a;
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-static {v0, v1}, Labcd/WE$a;->DW(Ljava/io/File;Labcd/pK;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance p1, Labcd/GG$b;

    iget-object v1, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-static {v0, v1}, Labcd/WE$a;->j6(Ljava/io/File;Labcd/pK;)Labcd/WE$a;

    move-result-object v0

    invoke-static {v0}, Labcd/WE;->j6(Labcd/WE$b;)Labcd/UE;

    move-result-object v0

    check-cast v0, Labcd/IG;

    invoke-direct {p1, v0}, Labcd/GG$b;-><init>(Labcd/IG;)V

    return-object p1

    :cond_1e
    new-instance v0, Labcd/GG$a;

    new-instance v1, Labcd/XG;

    iget-object v2, p0, Labcd/XG;->DW:Labcd/gE;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/XG;->tp:Labcd/pK;

    invoke-direct {v1, v2, p1, v3, v4}, Labcd/XG;-><init>(Labcd/gE;Ljava/io/File;[Ljava/io/File;Labcd/pK;)V

    invoke-direct {v0, v1}, Labcd/GG$a;-><init>(Labcd/GG;)V

    return-object v0
.end method

.method private DW(Labcd/XG$b;)Labcd/XG$b;
    .registers 6

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :cond_3
    :try_start_3
    iget-object v1, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/XG$b;

    if-eq v1, p1, :cond_f

    monitor-exit v0

    return-object v1

    :cond_f
    invoke-direct {p0, v1}, Labcd/XG;->FH(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v2

    if-ne v2, v1, :cond_17

    monitor-exit v0

    return-object v2

    :cond_17
    iget-object v3, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v1, v2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v0

    return-object v2

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private DW(Labcd/aH;)V
    .registers 8

    :cond_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-static {v1, p1}, Labcd/XG;->j6([Labcd/aH;Labcd/aH;)I

    move-result v2

    if-gez v2, :cond_11

    goto :goto_2f

    :cond_11
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v4, v3, [Labcd/aH;

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v3, v2

    invoke-static {v1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Labcd/XG$b;

    iget-object v2, v0, Labcd/XG$b;->j6:Labcd/LG;

    invoke-direct {v1, v2, v4}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    iget-object v2, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2f
    invoke-virtual {p1}, Labcd/aH;->DW()V

    return-void
.end method

.method private FH(Labcd/XG$b;)Labcd/XG$b;
    .registers 13

    invoke-static {p1}, Labcd/XG;->j6(Labcd/XG$b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-static {v1}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v1

    invoke-direct {p0}, Labcd/XG;->Ws()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    shr-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7a

    if-nez v6, :cond_3b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p1, Labcd/XG$b;->j6:Labcd/LG;

    invoke-virtual {v1, v2}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v0, p1, Labcd/XG$b;->j6:Labcd/LG;

    invoke-virtual {v0, v1}, Labcd/LG;->DW(Labcd/LG;)V

    return-object p1

    :cond_3b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_70

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    new-instance p1, Labcd/XG$b;

    sget-object v0, Labcd/XG;->j6:Labcd/XG$b;

    iget-object v0, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-direct {p1, v1, v0}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    return-object p1

    :cond_59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Labcd/aH;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Labcd/aH;

    sget-object v0, Labcd/aH;->j6:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Labcd/XG$b;

    invoke-direct {v0, v1, p1}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    return-object v0

    :cond_70
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/aH;

    invoke-virtual {p1}, Labcd/aH;->DW()V

    goto :goto_43

    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_1f

    const-string v8, ".idx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_91

    goto :goto_1f

    :cond_91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".pack"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b5

    goto/16 :goto_1f

    :cond_b5
    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/aH;

    if-eqz v9, :cond_c2

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_c2
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-direct {v6, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Labcd/aH;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9, v6}, Labcd/aH;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto/16 :goto_1f
.end method

.method private Hw(Ljava/lang/String;)Labcd/GG$a;
    .registers 4

    iget-object v0, p0, Labcd/XG;->tp:Labcd/pK;

    iget-object v1, p0, Labcd/XG;->FH:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/XG;->DW(Ljava/io/File;)Labcd/GG$a;

    move-result-object p1

    return-object p1
.end method

.method private QX()[Labcd/GG$a;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/XG;->Zo:Ljava/io/File;

    invoke-static {v1}, Labcd/XG;->j6(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v1

    :goto_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_2a

    if-nez v2, :cond_22

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Labcd/GG$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;

    return-object v0

    :cond_22
    :try_start_22
    invoke-direct {p0, v2}, Labcd/XG;->Hw(Ljava/lang/String;)Labcd/GG$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_c

    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method private Ws()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG;->v5:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-lt v3, v2, :cond_1a

    return-object v1

    :cond_1a
    aget-object v4, v0, v3

    const-string v5, "pack-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method private static j6([Labcd/aH;Labcd/aH;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6(Labcd/XG$a;)Labcd/XG$a;
    .registers 12

    iget-object v0, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-static {v2}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_11

    :catch_e
    move-exception v2

    new-array v2, v1, [B

    :goto_11
    if-eqz p1, :cond_29

    iget-object v3, p1, Labcd/XG$a;->j6:Labcd/LG;

    invoke-virtual {v3, v0}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p1, Labcd/XG$a;->FH:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v1, p1, Labcd/XG$a;->j6:Labcd/LG;

    invoke-virtual {v1, v0}, Labcd/LG;->DW(Labcd/LG;)V

    return-object p1

    :cond_29
    new-instance p1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_34
    :goto_34
    array-length v5, v2

    if-lt v1, v5, :cond_44

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    new-instance v1, Labcd/XG$a;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v0, p1, v2}, Labcd/XG$a;-><init>(Labcd/LG;Ljava/util/List;[B)V

    return-object v1

    :cond_44
    aget-byte v5, v2, v1

    const/16 v6, 0x23

    if-eq v5, v6, :cond_9f

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4f

    goto :goto_9f

    :cond_4f
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_5d

    add-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_5d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_62
    array-length v7, v2

    if-ge v1, v7, :cond_85

    aget-byte v7, v2, v1

    const/16 v8, 0x50

    if-eq v7, v8, :cond_6c

    goto :goto_85

    :cond_6c
    invoke-static {v2, v1}, Labcd/IK;->Zo([BI)I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    aget-byte v9, v2, v8

    if-ne v9, v6, :cond_77

    move v7, v8

    :cond_77
    add-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1, v7}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v7}, Labcd/IK;->Zo([BI)I

    move-result v1

    goto :goto_62

    :cond_85
    :goto_85
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_34

    new-instance v6, Labcd/QG;

    invoke-direct {v6, p0, v4, v5}, Labcd/QG;-><init>(Labcd/XG;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto :goto_34

    :cond_9f
    :goto_9f
    invoke-static {v2, v1}, Labcd/IK;->Zo([BI)I

    move-result v1

    goto :goto_34
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XG$b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/aH;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v1, :cond_c

    return-object v0

    :cond_c
    aget-object v3, p0, v2

    invoke-virtual {v3}, Labcd/aH;->VH()Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_14
    invoke-virtual {v3}, Labcd/aH;->DW()V

    goto :goto_34

    :cond_18
    invoke-virtual {v3}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/aH;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private j6(Labcd/aH;)V
    .registers 10

    :cond_0
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    invoke-virtual {p1}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-lt v5, v3, :cond_18

    goto :goto_22

    :cond_18
    aget-object v6, v1, v5

    sget-object v7, Labcd/aH;->j6:Ljava/util/Comparator;

    invoke-interface {v7, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_3d

    :goto_22
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Labcd/aH;

    aput-object p1, v2, v4

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Labcd/XG$b;

    iget-object v3, v0, Labcd/XG$b;->j6:Labcd/LG;

    invoke-direct {v1, v3, v2}, Labcd/XG$b;-><init>(Labcd/LG;[Labcd/aH;)V

    iget-object v2, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_3d
    invoke-virtual {v6}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    return-void

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_15
.end method


# virtual methods
.method DW(Labcd/wH;Labcd/YD;)J
    .registers 12

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_8
    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-lt v3, v2, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    aget-object v4, v1, v3

    :try_start_13
    invoke-virtual {v4, p1, p2}, Labcd/aH;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide v4
    :try_end_17
    .catch Labcd/mD; {:try_start_13 .. :try_end_17} :catch_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_1e

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v4

    if-gtz v8, :cond_22

    return-wide v4

    :catch_1e
    move-exception v5

    invoke-direct {p0, v4}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catch_25
    move-exception v1

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_8
.end method

.method public DW(Labcd/YD;)Ljava/io/File;
    .registers 2

    invoke-super {p0, p1}, Labcd/GG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public DW()Z
    .registers 2

    iget-object v0, p0, Labcd/XG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method DW(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method EQ()Labcd/GG;
    .registers 2

    new-instance v0, Labcd/DG;

    invoke-direct {v0, p0}, Labcd/DG;-><init>(Labcd/XG;)V

    return-object v0
.end method

.method FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p2}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_1b

    :try_start_9
    iget-object v1, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v1, p3}, Labcd/tH;->j6(Labcd/YD;)V

    invoke-static {v0, p2, p3, p1}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catchall_16
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p1

    iget-object p1, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {p1, p3}, Labcd/tH;->FH(Labcd/YD;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public FH()Labcd/xE;
    .registers 2

    invoke-virtual {p0}, Labcd/XG;->EQ()Labcd/GG;

    move-result-object v0

    return-object v0
.end method

.method FH(Labcd/YD;)Z
    .registers 9

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p1}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v0, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-lt v4, v2, :cond_1a

    return v3

    :cond_1a
    aget-object v5, v0, v4

    :try_start_1c
    invoke-virtual {v5, p1}, Labcd/aH;->j6(Labcd/YD;)Z

    move-result v5
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_23

    if-eqz v5, :cond_27

    return v1

    :catch_23
    move-exception v6

    invoke-direct {p0, v5}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_17
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
            "Ljava/util/Collection<",
            "Labcd/aH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    sget-object v1, Labcd/XG;->j6:Labcd/XG$b;

    if-ne v0, v1, :cond_10

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    :cond_10
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
            "Ljava/util/Collection<",
            "+",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$a;

    if-eqz v0, :cond_14

    iget-object v1, v0, Labcd/XG$a;->j6:Labcd/LG;

    iget-object v2, p0, Labcd/XG;->VH:Ljava/io/File;

    invoke-virtual {v1, v2}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_14
    invoke-direct {p0, v0}, Labcd/XG;->j6(Labcd/XG$a;)Labcd/XG$a;

    move-result-object v0

    :cond_18
    invoke-virtual {v0}, Labcd/XG$a;->j6()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    if-lt v3, v2, :cond_26

    return-object v0

    :cond_26
    aget-object v5, v1, v3

    invoke-virtual {v5}, Labcd/GG$a;->DW()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_48

    :cond_33
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3b

    move-object v0, v5

    goto :goto_48

    :cond_3b
    if-nez v4, :cond_45

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    move-object v0, v4

    const/4 v4, 0x1

    :cond_45
    invoke-interface {v0, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_23
.end method

.method public final gn()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/XG;->FH:Ljava/io/File;

    return-object v0
.end method

.method j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
    .registers 5

    :try_start_0
    invoke-virtual {p0, p2}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_16

    :try_start_9
    invoke-static {v0, p3, p1}, Labcd/sH;->j6(Ljava/io/InputStream;Labcd/YD;Labcd/wH;)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide p1

    :catchall_11
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    move-exception p1

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
    .registers 6

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object p1, Labcd/GG$c;->FH:Labcd/GG$c;

    return-object p1

    :cond_e
    if-nez p3, :cond_1c

    invoke-virtual {p0, p2}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object p1, Labcd/GG$c;->DW:Labcd/GG$c;

    return-object p1

    :cond_1c
    invoke-virtual {p0, p2}, Labcd/XG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object p1, Labcd/GG$c;->FH:Labcd/GG$c;

    return-object p1

    :cond_2c
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    iget-object p1, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {p1, p2}, Labcd/tH;->j6(Labcd/YD;)V

    sget-object p1, Labcd/GG$c;->j6:Labcd/GG$c;

    return-object p1

    :cond_3d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Labcd/zK;->DW(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    iget-object p1, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {p1, p2}, Labcd/tH;->j6(Labcd/YD;)V

    sget-object p1, Labcd/GG$c;->j6:Labcd/GG$c;

    return-object p1

    :cond_55
    if-nez p3, :cond_63

    invoke-virtual {p0, p2}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object p1, Labcd/GG$c;->DW:Labcd/GG$c;

    return-object p1

    :cond_63
    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    sget-object p1, Labcd/GG$c;->Hw:Labcd/GG$c;

    return-object p1
.end method

.method public j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
    .registers 10

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_79

    const-string v2, "pack-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    const-string v3, ".pack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x31

    if-ne v3, v6, :cond_65

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/16 v2, 0x2d

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Labcd/aH;

    invoke-direct {v0, p2, p1}, Labcd/aH;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Labcd/XG;->j6(Labcd/aH;)V

    return-object v0

    :cond_51
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->packDoesNotMatchIndex:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_65
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->notAValidPack:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->notAValidPack:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j6()V
    .registers 6

    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0}, Labcd/tH;->j6()V

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    iget-object v1, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Labcd/XG;->j6:Labcd/XG$b;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-lt v3, v1, :cond_38

    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;

    if-eqz v0, :cond_37

    iget-object v1, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    array-length v1, v0

    :goto_2c
    if-lt v2, v1, :cond_2f

    goto :goto_37

    :cond_2f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Labcd/GG$a;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_37
    :goto_37
    return-void

    :cond_38
    aget-object v4, v0, v3

    invoke-virtual {v4}, Labcd/aH;->DW()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method j6(Labcd/TH;Labcd/MH;Labcd/wH;)V
    .registers 11

    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_8
    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-lt v4, v2, :cond_21

    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v5

    array-length v6, v5

    :goto_14
    if-lt v3, v6, :cond_17

    return-void

    :cond_17
    aget-object v0, v5, v3

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/GG;->j6(Labcd/TH;Labcd/MH;Labcd/wH;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_21
    aget-object v5, v1, v4

    :try_start_23
    invoke-virtual {v5, p3, p2}, Labcd/aH;->FH(Labcd/wH;Labcd/YD;)Labcd/SG;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-virtual {p1, p2, v6}, Labcd/TH;->j6(Labcd/MH;Labcd/UH;)V
    :try_end_2c
    .catch Labcd/mD; {:try_start_23 .. :try_end_2c} :catch_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v6

    invoke-direct {p0, v5}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :catch_34
    move-exception v1

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_8
.end method

.method j6(Ljava/util/Set;Labcd/WD;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/XG$b;

    :goto_c
    iget-object v2, v1, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    const/16 v6, 0x100

    if-lt v5, v3, :cond_92

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_29

    invoke-direct {p0, v1}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v2

    if-eq v2, v1, :cond_29

    iget-object v1, v2, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v1, v1

    if-nez v1, :cond_27

    goto :goto_29

    :cond_27
    move-object v1, v2

    goto :goto_c

    :cond_29
    :goto_29
    invoke-virtual {p2}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    array-length v2, v1

    const/4 v3, 0x0

    :goto_43
    if-lt v3, v2, :cond_46

    goto :goto_79

    :cond_46
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x26

    if-eq v7, v8, :cond_51

    goto :goto_76

    :cond_51
    :try_start_51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v5

    invoke-virtual {p2, v5}, Labcd/WD;->DW(Labcd/YD;)I

    move-result v7

    if-nez v7, :cond_6e

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_6e} :catch_75

    :cond_6e
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v6, :cond_76

    return-void

    :catch_75
    move-exception v5

    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_79
    :goto_79
    invoke-virtual {p0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v7

    array-length v8, v7

    :goto_7e
    if-lt v4, v8, :cond_81

    return-void

    :cond_81
    aget-object v0, v7, v4

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2}, Labcd/GG;->j6(Ljava/util/Set;Labcd/WD;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v6, :cond_8f

    return-void

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :cond_92
    aget-object v7, v2, v5

    :try_start_94
    invoke-virtual {v7, p1, p2, v6}, Labcd/aH;->j6(Ljava/util/Set;Labcd/WD;I)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v8

    invoke-direct {p0, v7}, Labcd/XG;->DW(Labcd/aH;)V

    :goto_9c
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v6, :cond_a3

    return-void

    :cond_a3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11
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

    if-nez v0, :cond_2a

    iget-object v1, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/GG$a;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_27

    if-nez v0, :cond_25

    :try_start_17
    invoke-direct {p0}, Labcd/XG;->QX()[Labcd/GG$a;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catchall {:try_start_17 .. :try_end_1b} :catchall_27

    goto :goto_20

    :catch_1c
    move-exception v0

    const/4 v0, 0x0

    :try_start_1e
    new-array v0, v0, [Labcd/GG$a;

    :goto_20
    iget-object v2, p0, Labcd/XG;->EQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :goto_2a
    return-object v0
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

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    iget-object v0, p0, Labcd/XG;->we:Labcd/tH;

    invoke-virtual {v0, p2}, Labcd/tH;->FH(Labcd/YD;)V

    :cond_18
    iget-object v0, p0, Labcd/XG;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/XG$b;

    :goto_20
    iget-object v1, v0, Labcd/XG$b;->DW:[Labcd/aH;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_24
    if-lt v3, v2, :cond_28

    const/4 p1, 0x0

    return-object p1

    :cond_28
    aget-object v4, v1, v3

    :try_start_2a
    invoke-virtual {v4, p1, p2}, Labcd/aH;->j6(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v4
    :try_end_2e
    .catch Labcd/mD; {:try_start_2a .. :try_end_2e} :catch_38
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_31

    if-eqz v4, :cond_35

    return-object v4

    :catch_31
    move-exception v5

    invoke-direct {p0, v4}, Labcd/XG;->DW(Labcd/aH;)V

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :catch_38
    move-exception v1

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v0

    goto :goto_20
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

    if-eqz v1, :cond_1a

    invoke-direct {p0, v0}, Labcd/XG;->DW(Labcd/XG$b;)Labcd/XG$b;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
