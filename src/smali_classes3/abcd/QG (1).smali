.class Labcd/QG;
.super Labcd/BH;


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:[Ljava/lang/String;

.field private Hw:[Labcd/aH;

.field private final j6:Labcd/XG;


# direct methods
.method constructor <init>(Labcd/XG;Ljava/util/Set;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XG;",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/BH;-><init>()V

    iput-object p1, p0, Labcd/QG;->j6:Labcd/XG;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yE;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1f

    :cond_1b
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_1f
    iput-object p1, p0, Labcd/QG;->DW:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Labcd/QG;->FH:[Ljava/lang/String;

    return-void
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/QG;->j6:Labcd/XG;

    invoke-virtual {v1}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v1

    const-string v2, "pack"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pack-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pack"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private Hw()[Labcd/aH;
    .registers 5

    iget-object v0, p0, Labcd/QG;->Hw:[Labcd/aH;

    if-nez v0, :cond_1d

    iget-object v0, p0, Labcd/QG;->FH:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Labcd/aH;

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Labcd/QG;->FH:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_12

    iput-object v0, p0, Labcd/QG;->Hw:[Labcd/aH;

    goto :goto_1d

    :cond_12
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Labcd/QG;->j6(Ljava/lang/String;)Labcd/aH;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    :goto_1d
    iget-object v0, p0, Labcd/QG;->Hw:[Labcd/aH;

    return-object v0
.end method

.method private j6(Ljava/lang/String;)Labcd/aH;
    .registers 5

    iget-object v0, p0, Labcd/QG;->j6:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->J8()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/aH;

    invoke-virtual {v1}, Labcd/aH;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_21
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, p1}, Labcd/QG;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method


# virtual methods
.method public DW()J
    .registers 8

    invoke-direct {p0}, Labcd/QG;->Hw()[Labcd/aH;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v1, :cond_b

    return-wide v2

    :cond_b
    aget-object v5, v0, v4

    invoke-virtual {v5}, Labcd/aH;->Hw()J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public FH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/QG;->DW:Ljava/util/Set;

    return-object v0
.end method

.method j6(Labcd/OH;ZLabcd/wH;)V
    .registers 8

    invoke-direct {p0}, Labcd/QG;->Hw()[Labcd/aH;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v1, :cond_9

    return-void

    :cond_9
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Labcd/aH;->j6(Labcd/OH;ZLabcd/wH;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public j6(Labcd/MH;Labcd/UH;)Z
    .registers 8

    const/4 p1, 0x0

    :try_start_1
    check-cast p2, Labcd/SG;

    invoke-direct {p0}, Labcd/QG;->Hw()[Labcd/aH;

    move-result-object v0

    array-length v1, v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_17

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v1, :cond_c

    return p1

    :cond_c
    aget-object v3, v0, v2

    :try_start_e
    iget-object v4, p2, Labcd/SG;->j6:Labcd/aH;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_10} :catch_17

    if-ne v4, v3, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_17
    move-exception p2

    return p1
.end method
