.class public Lcom/tencent/mm/androlib/res/data/ResPackage;
.super Ljava/lang/Object;


# instance fields
.field private mCanProguard:Z

.field private final mName:Ljava/lang/String;

.field private final mSpecNamesBlock:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSpecNamesReplace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mCanProguard:Z

    iput-object p2, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesReplace:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesBlock:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecNamesBlock()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesBlock:Ljava/util/Map;

    return-object v0
.end method

.method public getSpecRepplace(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesReplace:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasSpecRepplace(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesReplace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCanResguard()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mCanProguard:Z

    return v0
.end method

.method public putSpecNamesReplace(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesReplace:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSpecNamesblock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesBlock:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mSpecNamesBlock:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCanResguard(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mCanProguard:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResPackage;->mName:Ljava/lang/String;

    return-object v0
.end method
