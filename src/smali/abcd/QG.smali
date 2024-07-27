.class Labcd/QG;
.super Labcd/BH;


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XG;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/BH;-><init>()V

    iput-object p1, p0, Labcd/QG;->j6:Labcd/XG;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/QG;->DW:Ljava/util/Set;

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Labcd/QG;->FH:[Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/QG;->DW:Ljava/util/Set;

    goto :goto_0
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

    const-string v2, ".pack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Hw()[Labcd/aH;
    .registers 5

    iget-object v0, p0, Labcd/QG;->Hw:[Labcd/aH;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/QG;->FH:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Labcd/aH;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/QG;->FH:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iput-object v1, p0, Labcd/QG;->Hw:[Labcd/aH;

    :cond_0
    iget-object v0, p0, Labcd/QG;->Hw:[Labcd/aH;

    return-object v0

    :cond_1
    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Labcd/QG;->j6(Ljava/lang/String;)Labcd/aH;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;)Labcd/aH;
    .registers 5

    iget-object v0, p0, Labcd/QG;->j6:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->J8()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/aH;

    invoke-virtual {v0}, Labcd/aH;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, p1}, Labcd/QG;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()J
    .registers 9

    invoke-direct {p0}, Labcd/QG;->Hw()[Labcd/aH;

    move-result-object v3

    array-length v4, v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    return-wide v0

    :cond_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Labcd/aH;->Hw()J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public FH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
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

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Labcd/aH;->j6(Labcd/OH;ZLabcd/wH;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/MH;Labcd/UH;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_0
    check-cast p2, Labcd/SG;

    invoke-direct {p0}, Labcd/QG;->Hw()[Labcd/aH;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    :try_start_1
    iget-object v5, p2, Labcd/SG;->j6:Labcd/aH;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v5, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
