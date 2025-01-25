.class final Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypeVariableKey"
.end annotation


# instance fields
.field private final var:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    .line 557
    return-void
.end method

.method private equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)Z"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    .line 602
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 601
    :goto_21
    return v0

    .line 602
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
    .registers 2

    .line 581
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_c

    .line 582
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    .line 584
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 566
    instance-of v0, p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    if-eqz v0, :cond_d

    .line 567
    check-cast p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    .line 568
    iget-object v0, p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z

    move-result v0

    .line 570
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method equalsType(Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 593
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_b

    .line 594
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z

    move-result v0

    .line 596
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    .line 561
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
