.class public Lcom/sun/tools/javac/model/JavacTypes;
.super Ljava/lang/Object;
.source "JavacTypes.java"

# interfaces
.implements Ljavax/lang/model/util/Types;


# static fields
.field private static final EXEC_OR_PKG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/type/TypeKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private syms:Lcom/sun/tools/javac/code/Symtab;

.field private types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 282
    sget-object v0, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    .line 283
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    .line 282
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacTypes;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 62
    return-void
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 301
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 300
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs getDeclaredType0(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .registers 9

    .line 244
    array-length v0, p3

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 248
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 249
    array-length v3, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v3, :cond_34

    aget-object v0, p3, v1

    .line 250
    instance-of v4, v0, Ljavax/lang/model/type/ReferenceType;

    if-nez v4, :cond_21

    instance-of v4, v0, Ljavax/lang/model/type/WildcardType;

    if-eqz v4, :cond_2a

    .line 252
    :cond_21
    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 251
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_34
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    .line 245
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect number of type arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacTypes;
    .registers 2

    .line 51
    const-class v0, Lcom/sun/tools/javac/model/JavacTypes;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/model/JavacTypes;

    .line 52
    if-nez v0, :cond_f

    .line 53
    new-instance v0, Lcom/sun/tools/javac/model/JavacTypes;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/model/JavacTypes;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 54
    :cond_f
    return-object v0
.end method

.method private validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/type/TypeKind;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 291
    return-void

    .line 290
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
    .registers 4

    .line 75
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 82
    const/4 v0, 0x0

    :goto_16
    return-object v0

    .line 79
    :cond_17
    const-class v0, Lcom/sun/tools/javac/code/Type;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacTypes;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 80
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    goto :goto_16
.end method

.method public asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;
    .registers 5

    .line 274
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    .line 275
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 278
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 277
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public capture(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .registers 3

    .line 141
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 142
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .registers 4

    .line 103
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 104
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 114
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    .line 115
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_15

    if-eq v0, p1, :cond_15

    if-nez v0, :cond_1c

    .line 117
    :cond_15
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 116
    :goto_1b
    return-object v0

    .line 118
    :cond_1c
    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_1b
.end method

.method public erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .registers 4

    .line 122
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_11

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 123
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;
    .registers 4

    .line 174
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 181
    :pswitch_f  #0xd
    new-instance v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    .line 179
    :pswitch_1b  #0xc, 0xe, 0xf, 0x10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    nop

    :pswitch_data_26
    .packed-switch 0xc
        :pswitch_1b  #0000000c
        :pswitch_f  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_1b  #00000010
    .end packed-switch
.end method

.method public varargs getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .registers 5

    .line 214
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 216
    array-length v0, p2

    if-nez v0, :cond_e

    .line 217
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 221
    :goto_d
    return-object v0

    .line 218
    :cond_e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_25

    .line 221
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/tools/javac/model/JavacTypes;->getDeclaredType0(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    goto :goto_d

    .line 219
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getDeclaredType(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .registers 8

    .line 227
    if-nez p1, :cond_7

    .line 228
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/model/JavacTypes;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 238
    :goto_6
    return-object v0

    :cond_7
    move-object v0, p2

    .line 230
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object v1, p1

    .line 231
    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 233
    iget-object v2, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    if-ne v2, v3, :cond_27

    .line 235
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 236
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/model/JavacTypes;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    goto :goto_6

    .line 238
    :cond_22
    invoke-direct {p0, v1, v0, p3}, Lcom/sun/tools/javac/model/JavacTypes;->getDeclaredType0(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    goto :goto_6

    .line 234
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;
    .registers 4

    .line 165
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xd

    if-ne v0, v1, :cond_13

    .line 167
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    :goto_12
    return-object v0

    .line 169
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/lang/model/type/TypeKind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1d
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_12
.end method

.method public getNullType()Ljavax/lang/model/type/NullType;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Ljavax/lang/model/type/NullType;

    return-object v0
.end method

.method public getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;
    .registers 4

    .line 146
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a primitive type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :pswitch_22  #0xb
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    :goto_26
    return-object v0

    .line 153
    :pswitch_27  #0xa
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 152
    :pswitch_2c  #0x9
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 151
    :pswitch_31  #0x8
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 150
    :pswitch_36  #0x7
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 149
    :pswitch_3b  #0x6
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 148
    :pswitch_40  #0x5
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 147
    :pswitch_45  #0x4
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    goto :goto_26

    .line 146
    :pswitch_data_4a
    .packed-switch 0x4
        :pswitch_45  #00000004
        :pswitch_40  #00000005
        :pswitch_3b  #00000006
        :pswitch_36  #00000007
        :pswitch_31  #00000008
        :pswitch_2c  #00000009
        :pswitch_27  #0000000a
        :pswitch_22  #0000000b
    .end packed-switch
.end method

.method public getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;
    .registers 6

    .line 188
    if-nez p1, :cond_2d

    if-nez p2, :cond_2d

    .line 189
    sget-object v0, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    .line 190
    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 201
    :goto_a
    sget-object v1, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3c

    .line 206
    :cond_23
    new-instance v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, p1, v0, v2}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v1

    .line 191
    :cond_2d
    if-nez p2, :cond_34

    .line 192
    sget-object v0, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    .line 193
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    goto :goto_a

    .line 194
    :cond_34
    if-nez p1, :cond_46

    .line 195
    sget-object v0, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    .line 196
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    move-object p1, p2

    goto :goto_a

    .line 208
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extends and super bounds cannot both be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .registers 4

    .line 97
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 98
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public isSubsignature(Ljavax/lang/model/type/ExecutableType;Ljavax/lang/model/type/ExecutableType;)Z
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .registers 4

    .line 91
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 92
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes;->EXEC_OR_PKG:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/model/JavacTypes;->validateTypeNotIn(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method public setContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 69
    const-class v0, Lcom/sun/tools/javac/model/JavacTypes;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 71
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    .line 72
    return-void
.end method

.method public unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;
    .registers 4

    .line 132
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_22

    .line 134
    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacTypes;->types:Lcom/sun/tools/javac/code/Types;

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 137
    return-object v0

    .line 136
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
