.class public Lsun/reflect/generics/visitor/Reifier;
.super Ljava/lang/Object;
.source "Reifier.java"

# interfaces
.implements Lsun/reflect/generics/visitor/TypeTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/reflect/generics/visitor/TypeTreeVisitor",
        "<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private factory:Lsun/reflect/generics/factory/GenericsFactory;

.field private resultType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method private constructor <init>(Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lsun/reflect/generics/visitor/Reifier;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    .line 46
    return-void
.end method

.method private getFactory()Lsun/reflect/generics/factory/GenericsFactory;
    .registers 2

    .line 48
    iget-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    return-object v0
.end method

.method public static make(Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/visitor/Reifier;
    .registers 2

    .line 60
    new-instance v0, Lsun/reflect/generics/visitor/Reifier;

    invoke-direct {v0, p0}, Lsun/reflect/generics/visitor/Reifier;-><init>(Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method

.method private reifyTypeArguments([Lsun/reflect/generics/tree/TypeArgument;)[Ljava/lang/reflect/Type;
    .registers 5

    .line 66
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 67
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_13

    .line 68
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Lsun/reflect/generics/tree/TypeArgument;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 69
    iget-object v2, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 71
    :cond_13
    return-object v1
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/reflect/Type;
    .registers 2

    .line 80
    iget-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public visitArrayTypeSignature(Lsun/reflect/generics/tree/ArrayTypeSignature;)V
    .registers 4

    .line 159
    invoke-virtual {p1}, Lsun/reflect/generics/tree/ArrayTypeSignature;->getComponentType()Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    invoke-interface {v0, p0}, Lsun/reflect/generics/tree/TypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 160
    iget-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 161
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 162
    return-void
.end method

.method public visitBooleanSignature(Lsun/reflect/generics/tree/BooleanSignature;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeBool()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 187
    return-void
.end method

.method public visitBottomSignature(Lsun/reflect/generics/tree/BottomSignature;)V
    .registers 2

    .line 179
    return-void
.end method

.method public visitByteSignature(Lsun/reflect/generics/tree/ByteSignature;)V
    .registers 3

    .line 182
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeByte()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 183
    return-void
.end method

.method public visitCharSignature(Lsun/reflect/generics/tree/CharSignature;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeChar()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 195
    return-void
.end method

.method public visitClassTypeSignature(Lsun/reflect/generics/tree/ClassTypeSignature;)V
    .registers 8

    .line 106
    invoke-virtual {p1}, Lsun/reflect/generics/tree/ClassTypeSignature;->getPath()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getDollar()Z

    .line 115
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v1, "$"

    if-eqz v2, :cond_43

    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_43

    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    .line 117
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getDollar()Z

    move-result v2

    .line 118
    if-eqz v2, :cond_40

    :goto_35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_40
    const-string v1, "."

    goto :goto_35

    .line 123
    :cond_43
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lsun/reflect/generics/factory/GenericsFactory;->makeNamedType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_59

    .line 129
    iput-object v1, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 155
    :goto_58
    return-void

    .line 132
    :cond_59
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/reflect/generics/visitor/Reifier;->reifyTypeArguments([Lsun/reflect/generics/tree/TypeArgument;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v1, v0, v5}, Lsun/reflect/generics/factory/GenericsFactory;->makeParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    move-object v2, v0

    .line 142
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    .line 145
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getDollar()Z

    move-result v1

    .line 146
    if-eqz v1, :cond_a7

    const-string v1, "$"

    :goto_7f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lsun/reflect/generics/factory/GenericsFactory;->makeNamedType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/reflect/generics/visitor/Reifier;->reifyTypeArguments([Lsun/reflect/generics/tree/TypeArgument;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 151
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v5

    invoke-interface {v5, v1, v0, v2}, Lsun/reflect/generics/factory/GenericsFactory;->makeParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    move-object v2, v0

    goto :goto_6b

    .line 146
    :cond_a7
    const-string v1, "."

    goto :goto_7f

    .line 153
    :cond_aa
    iput-object v2, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    goto :goto_58
.end method

.method public visitDoubleSignature(Lsun/reflect/generics/tree/DoubleSignature;)V
    .registers 3

    .line 210
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeDouble()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 211
    return-void
.end method

.method public visitFloatSignature(Lsun/reflect/generics/tree/FloatSignature;)V
    .registers 3

    .line 206
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeFloat()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 207
    return-void
.end method

.method public visitFormalTypeParameter(Lsun/reflect/generics/tree/FormalTypeParameter;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-virtual {p1}, Lsun/reflect/generics/tree/FormalTypeParameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lsun/reflect/generics/tree/FormalTypeParameter;->getBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Lsun/reflect/generics/factory/GenericsFactory;->makeTypeVariable(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 85
    return-void
.end method

.method public visitIntSignature(Lsun/reflect/generics/tree/IntSignature;)V
    .registers 3

    .line 198
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeInt()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 199
    return-void
.end method

.method public visitLongSignature(Lsun/reflect/generics/tree/LongSignature;)V
    .registers 3

    .line 202
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeLong()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 203
    return-void
.end method

.method public visitShortSignature(Lsun/reflect/generics/tree/ShortSignature;)V
    .registers 3

    .line 190
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeShort()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 191
    return-void
.end method

.method public visitSimpleClassTypeSignature(Lsun/reflect/generics/tree/SimpleClassTypeSignature;)V
    .registers 4

    .line 174
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-virtual {p1}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsun/reflect/generics/factory/GenericsFactory;->makeNamedType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 175
    return-void
.end method

.method public visitTypeVariableSignature(Lsun/reflect/generics/tree/TypeVariableSignature;)V
    .registers 4

    .line 165
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-virtual {p1}, Lsun/reflect/generics/tree/TypeVariableSignature;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsun/reflect/generics/factory/GenericsFactory;->findTypeVariable(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 166
    return-void
.end method

.method public visitVoidDescriptor(Lsun/reflect/generics/tree/VoidDescriptor;)V
    .registers 3

    .line 214
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-interface {v0}, Lsun/reflect/generics/factory/GenericsFactory;->makeVoid()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 215
    return-void
.end method

.method public visitWildcard(Lsun/reflect/generics/tree/Wildcard;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Lsun/reflect/generics/visitor/Reifier;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-virtual {p1}, Lsun/reflect/generics/tree/Wildcard;->getUpperBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lsun/reflect/generics/tree/Wildcard;->getLowerBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v2

    .line 169
    invoke-interface {v0, v1, v2}, Lsun/reflect/generics/factory/GenericsFactory;->makeWildcard([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/visitor/Reifier;->resultType:Ljava/lang/reflect/Type;

    .line 171
    return-void
.end method
