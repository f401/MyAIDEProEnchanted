.class final Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$mappings:Ljava/util/Map;

.field final val$to:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    .line 201
    return-void

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No type mapping from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_7

    .line 196
    :goto_6
    return-void

    .line 193
    :cond_7
    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :goto_e
    const-string v2, "%s is not an array type."

    iget-object v3, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_6

    .line 194
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 8

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_8

    .line 186
    :cond_7
    return-void

    .line 165
    :cond_8
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v0}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 166
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 167
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 168
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    .line 169
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 168
    invoke-static {v1, v3, v4}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 171
    :cond_29
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    const-string v4, "Inconsistent raw type: %s vs. %s"

    invoke-static {v1, v4, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 177
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 178
    array-length v1, v3

    array-length v5, v4

    if-ne v1, v5, :cond_5d

    const/4 v1, 0x1

    :goto_49
    const-string v5, "%s not compatible with %s"

    invoke-static {v1, v5, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :goto_4e
    array-length v0, v3

    if-ge v2, v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v1, v3, v2

    aget-object v5, v4, v2

    invoke-static {v0, v1, v5}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5d
    move v1, v2

    .line 178
    goto :goto_49
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 11

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_8

    .line 158
    :cond_7
    return-void

    .line 141
    :cond_8
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 142
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 143
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 144
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 145
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 146
    array-length v0, v2

    array-length v6, v3

    if-ne v0, v6, :cond_3a

    array-length v0, v4

    array-length v6, v5

    if-ne v0, v6, :cond_3a

    const/4 v0, 0x1

    :goto_23
    const-string v6, "Incompatible type: %s vs. %s"

    iget-object v7, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v6, p1, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 152
    :goto_2b
    array-length v6, v2

    if-ge v0, v6, :cond_3c

    .line 153
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v2, v0

    aget-object v8, v3, v0

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3a
    move v0, v1

    .line 146
    goto :goto_23

    .line 155
    :cond_3c
    :goto_3c
    array-length v0, v4

    if-ge v1, v0, :cond_7

    .line 156
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v2, v4, v1

    aget-object v3, v5, v1

    invoke-static {v0, v2, v3}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c
.end method
