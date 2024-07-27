.class public Labcd/pB;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/yE;

.field private FH:Labcd/yE;

.field private Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation
.end field

.field private VH:Labcd/vF;

.field private Zo:Ljava/lang/String;

.field private gn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation
.end field

.field private j6:[Labcd/yE;

.field private v5:Labcd/pB$a;


# direct methods
.method public constructor <init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/yE;",
            "Labcd/yE;",
            "[",
            "Labcd/yE;",
            "Labcd/pB$a;",
            "Labcd/vF;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LuF",
            "<*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/yE;",
            "Labcd/yE;",
            "[",
            "Labcd/yE;",
            "Labcd/pB$a;",
            "Labcd/vF;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LuF",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/pB;->FH:Labcd/yE;

    iput-object p3, p0, Labcd/pB;->j6:[Labcd/yE;

    iput-object p2, p0, Labcd/pB;->DW:Labcd/yE;

    iput-object p4, p0, Labcd/pB;->v5:Labcd/pB$a;

    iput-object p5, p0, Labcd/pB;->VH:Labcd/vF;

    iput-object p8, p0, Labcd/pB;->Zo:Ljava/lang/String;

    iput-object p7, p0, Labcd/pB;->gn:Ljava/util/Map;

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/uF;

    invoke-virtual {p0, v0, v1}, Labcd/pB;->j6(Ljava/lang/String;Labcd/uF;)V

    goto :goto_0
.end method


# virtual methods
.method public j6()Labcd/pB$a;
    .registers 2

    iget-object v0, p0, Labcd/pB;->v5:Labcd/pB$a;

    return-object v0
.end method

.method public j6(Ljava/lang/String;Labcd/uF;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LuF",
            "<*>;)V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Labcd/uF;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/pB;->Hw:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/pB;->Hw:Ljava/util/Map;

    :cond_1
    invoke-virtual {p2}, Labcd/uF;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    invoke-virtual {p2}, Labcd/uF;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v5

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Labcd/pB;->Hw:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qF;

    invoke-virtual {v1}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v4

    sget-object v7, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v4, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-le v3, v5, :cond_5

    aget-object v4, v0, v3

    iget-object v7, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v7, v7

    aput v2, v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Labcd/qF;->FH()I

    move-result v4

    aget-object v7, v0, v3

    invoke-virtual {v1}, Labcd/qF;->Hw()I

    move-result v8

    invoke-virtual {v1}, Labcd/qF;->j6()I

    move-result v9

    aput v9, v7, v8

    :goto_3
    invoke-virtual {v1}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v7

    sget-object v8, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Labcd/qF;->FH()I

    move-result v7

    if-le v7, v4, :cond_6

    invoke-virtual {v1}, Labcd/qF;->FH()I

    :cond_6
    aget-object v4, v0, v3

    invoke-virtual {v1}, Labcd/qF;->Hw()I

    move-result v7

    invoke-virtual {v1}, Labcd/qF;->j6()I

    move-result v1

    aput v1, v4, v7

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qF;

    invoke-virtual {v0}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v0

    sget-object v4, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v6, v5

    move v0, v2

    move v3, v1

    :goto_0
    if-lt v3, v6, :cond_1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v3, v0, Lorg/eclipse/jgit/JGitText;->mergeUsingStrategyResultedInDescription:Ljava/lang/String;

    iget-object v0, p0, Labcd/pB;->DW:Labcd/yE;

    invoke-static {v0}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Labcd/pB;->VH:Labcd/vF;

    invoke-virtual {v0}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Labcd/pB;->v5:Labcd/pB$a;

    iget-object v0, p0, Labcd/pB;->Zo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v1

    aput-object v5, v8, v2

    const/4 v1, 0x2

    aput-object v6, v8, v1

    const/4 v1, 0x3

    aput-object v7, v8, v1

    const/4 v1, 0x4

    aput-object v0, v8, v1

    invoke-static {v3, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Labcd/pB;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    aget-object v7, v5, v3

    if-nez v0, :cond_2

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v7}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
