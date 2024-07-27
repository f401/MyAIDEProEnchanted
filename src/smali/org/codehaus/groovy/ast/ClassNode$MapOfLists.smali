.class Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/ast/ClassNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapOfLists"
.end annotation


# instance fields
.field private j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/groovy/ast/ClassNode$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j6(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/MethodNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public j6(Ljava/lang/Object;Lorg/codehaus/groovy/ast/MethodNode;)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codehaus/groovy/ast/ClassNode$MapOfLists;->j6:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
