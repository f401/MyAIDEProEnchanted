.class public Labcd/pB;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/yE;

.field private FH:Labcd/yE;

.field private Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuF<",
            "*>;>;",
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/yE;",
            "Labcd/yE;",
            "[",
            "Labcd/yE;",
            "Labcd/pB$a;",
            "Labcd/vF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuF<",
            "*>;>;",
            "Ljava/util/Map<",
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

    if-eqz p6, :cond_38

    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_38

    :cond_22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/uF;

    invoke-virtual {p0, p3, p2}, Labcd/pB;->j6(Ljava/lang/String;Labcd/uF;)V

    goto :goto_1b

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public j6()Labcd/pB$a;
    .registers 2

    iget-object v0, p0, Labcd/pB;->v5:Labcd/pB$a;

    return-object v0
.end method

.method public j6(Ljava/lang/String;Labcd/uF;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LuF<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Labcd/uF;->DW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Labcd/pB;->Hw:Ljava/util/Map;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/pB;->Hw:Ljava/util/Map;

    :cond_12
    invoke-virtual {p2}, Labcd/uF;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_93

    iget-object v0, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[I

    invoke-virtual {p2}, Labcd/uF;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    const/4 p2, -0x1

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object p2, p0, Labcd/pB;->Hw:Ljava/util/Map;

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qF;

    invoke-virtual {v0}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v2

    sget-object v6, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v2, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    if-le p2, v5, :cond_5d

    aget-object v2, v3, p2

    iget-object v6, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v6, v6

    aput v1, v2, v6

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0}, Labcd/qF;->FH()I

    move-result v2

    aget-object v6, v3, p2

    invoke-virtual {v0}, Labcd/qF;->Hw()I

    move-result v7

    invoke-virtual {v0}, Labcd/qF;->j6()I

    move-result v8

    aput v8, v6, v7

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    invoke-virtual {v0}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v6

    sget-object v7, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v0}, Labcd/qF;->FH()I

    move-result v6

    if-le v6, v2, :cond_86

    invoke-virtual {v0}, Labcd/qF;->FH()I

    :cond_86
    aget-object v2, v3, p2

    invoke-virtual {v0}, Labcd/qF;->Hw()I

    move-result v6

    invoke-virtual {v0}, Labcd/qF;->j6()I

    move-result v0

    aput v0, v2, v6

    goto :goto_36

    :cond_93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/qF;

    invoke-virtual {v3}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v3

    sget-object v4, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/pB;->j6:[Labcd/yE;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_c
    const-string v7, ", "

    if-lt v5, v2, :cond_4e

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->mergeUsingStrategyResultedInDescription:Ljava/lang/String;

    iget-object v2, p0, Labcd/pB;->DW:Labcd/yE;

    invoke-static {v2}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Labcd/pB;->VH:Labcd/vF;

    invoke-virtual {v5}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Labcd/pB;->v5:Labcd/pB$a;

    iget-object v8, p0, Labcd/pB;->Zo:Ljava/lang/String;

    if-nez v8, :cond_2b

    const-string v7, ""

    goto :goto_39

    :cond_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Labcd/pB;->Zo:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_39
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v2, v8, v4

    const/4 v0, 0x2

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    invoke-static {v1, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4e
    aget-object v8, v1, v5

    if-nez v6, :cond_56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_56
    const/4 v6, 0x0

    :goto_57
    invoke-static {v8}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c
.end method
