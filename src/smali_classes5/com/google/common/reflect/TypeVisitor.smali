.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .registers 7

    .line 65
    array-length v4, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_6f

    aget-object v2, p1, v3

    .line 66
    if-eqz v2, :cond_11

    iget-object v1, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 65
    :cond_11
    :goto_11
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 70
    :cond_15
    :try_start_15
    instance-of v1, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_28

    .line 73
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 87
    :catchall_21
    move-exception v1

    .line 88
    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    throw v1

    .line 74
    :cond_28
    :try_start_28
    instance-of v1, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_34

    .line 75
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V

    goto :goto_11

    .line 76
    :cond_34
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_40

    .line 77
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_11

    .line 78
    :cond_40
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_4c

    .line 79
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    goto :goto_11

    .line 80
    :cond_4c
    instance-of v1, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_58

    .line 81
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V

    goto :goto_11

    .line 83
    :cond_58
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_21

    .line 92
    :cond_6f
    return-void
.end method

.method visitClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 94
    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .registers 2

    .line 96
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 2

    .line 98
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .line 100
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 2

    .line 102
    return-void
.end method
