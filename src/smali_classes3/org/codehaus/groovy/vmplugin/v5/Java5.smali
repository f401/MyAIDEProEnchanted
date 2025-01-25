.class public Lorg/codehaus/groovy/vmplugin/v5/Java5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/groovy/vmplugin/VMPlugin;


# static fields
.field private static final DW:[Ljava/lang/Class;

.field private static j6:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/codehaus/groovy/vmplugin/v5/PluginDefaultGroovyMethods;

    aput-object v2, v1, v0

    sput-object v1, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Z)V

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Z)V

    new-array v1, v1, [Lorg/codehaus/groovy/ast/GenericsType;

    new-instance v2, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {v2, p1}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    sget-object p1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object v0
.end method

.method private DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 3

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/reflect/TypeVariable;)[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    return-void
.end method

.method private DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    array-length v0, p1

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    array-length v0, p1

    new-array v0, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_17

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method private j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/reflect/GenericArrayType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/reflect/ParameterizedType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    return-object v0
.end method

.method private j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/WildcardType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/ParameterizedType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_21

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/GenericArrayType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_21
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2c

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_2c
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_37

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1

    :cond_37
    if-nez p1, :cond_41

    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    const-string v0, "Type is null. Most probably you let a transform reuse existing ClassNodes with generics information, that is now used in a wrong context."

    invoke-direct {p1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/lang/reflect/WildcardType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 6

    const-string v0, "?"

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    aget-object v1, v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    new-instance v3, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-direct {v3, v0, p1, v1}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lorg/codehaus/groovy/ast/GenericsType;->DW(Z)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    new-array p1, p1, [Lorg/codehaus/groovy/ast/GenericsType;

    aput-object v3, p1, v2

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    return-object v0
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    if-eqz p1, :cond_b

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/CompileUnit;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-nez p1, :cond_12

    invoke-static {p3}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    :cond_12
    instance-of p3, p2, Ljava/lang/Class;

    if-nez p3, :cond_1e

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object p2

    :cond_1e
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/GenericsType;
    .registers 6

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v3, p1

    if-nez v3, :cond_19

    new-instance p1, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {p1, v0}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_2e

    :cond_19
    new-instance v3, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Z)V

    move-object p1, v3

    :goto_2e
    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object p1
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;I)Lorg/codehaus/groovy/ast/Parameter;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "param"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p3, Lorg/codehaus/groovy/ast/Parameter;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/codehaus/groovy/ast/Parameter;-><init>(Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    return-object p3
.end method

.method private j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;
    .registers 6

    if-eqz p1, :cond_4a

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4a

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_4a

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_4a

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    goto :goto_4a

    :cond_13
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_23

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object v0

    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ListExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/ListExpression;-><init>()V

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_37
    if-eq v2, v1, :cond_47

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codehaus/groovy/ast/expr/ListExpression;->j6(Lorg/codehaus/groovy/ast/expr/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_47
    return-object v0

    :cond_48
    const/4 p1, 0x0

    return-object p1

    :cond_4a
    :goto_4a
    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, p1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private j6(Ljava/lang/annotation/RetentionPolicy;Lorg/codehaus/groovy/ast/AnnotationNode;)V
    .registers 6

    sget-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->j6:[I

    invoke-virtual {p1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    invoke-virtual {p2, v1}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Z)V

    goto :goto_33

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported Retention "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    invoke-virtual {p2, v1}, Lorg/codehaus/groovy/ast/AnnotationNode;->FH(Z)V

    goto :goto_33

    :cond_30
    invoke-virtual {p2, v1}, Lorg/codehaus/groovy/ast/AnnotationNode;->DW(Z)V

    :goto_33
    return-void
.end method

.method private j6(Lorg/codehaus/groovy/ast/AnnotationNode;Ljava/lang/annotation/Annotation;)V
    .registers 11

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Retention;

    const-string v2, "value"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2c

    check-cast p2, Ljava/lang/annotation/Retention;

    invoke-interface {p2}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/annotation/RetentionPolicy;Lorg/codehaus/groovy/ast/AnnotationNode;)V

    new-instance v0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;

    new-instance v1, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    const-class v4, Ljava/lang/annotation/RetentionPolicy;

    invoke-static {v4, v3}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {p2}, Ljava/lang/annotation/RetentionPolicy;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/codehaus/groovy/ast/expr/PropertyExpression;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p1, v2, v0}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V

    goto :goto_7f

    :cond_2c
    const-class v1, Ljava/lang/annotation/Target;

    if-ne v0, v1, :cond_56

    check-cast p2, Ljava/lang/annotation/Target;

    invoke-interface {p2}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object p2

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ListExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/ListExpression;-><init>()V

    array-length v1, p2

    :goto_3c
    if-ge v3, v1, :cond_28

    aget-object v4, p2, v3

    new-instance v5, Lorg/codehaus/groovy/ast/expr/PropertyExpression;

    new-instance v6, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    sget-object v7, Lorg/codehaus/groovy/ast/ClassHelper;->Mz:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v6, v7}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/codehaus/groovy/ast/expr/PropertyExpression;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/codehaus/groovy/ast/expr/ListExpression;->j6(Lorg/codehaus/groovy/ast/expr/Expression;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_56
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_5a} :catch_5b

    goto :goto_5e

    :catch_5b
    move-exception v0

    new-array v0, v3, [Ljava/lang/reflect/Method;

    :goto_5e
    array-length v1, v0

    const/4 v2, 0x0

    :goto_60
    if-ge v2, v1, :cond_7f

    aget-object v4, v0, v2

    :try_start_64
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;

    move-result-object v5

    if-nez v5, :cond_71

    goto :goto_7c

    :cond_71
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v5}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V
    :try_end_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_78} :catch_7b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_78} :catch_79

    goto :goto_7c

    :catch_79
    move-exception v4

    goto :goto_7c

    :catch_7b
    move-exception v4

    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_7f
    :goto_7f
    return-void
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/Class;)V
    .registers 9

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_d

    sget-object p1, Lorg/codehaus/groovy/ast/ClassNode;->u7:[Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p2, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_5b

    :cond_d
    array-length v1, v0

    new-array v1, v1, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v2, 0x0

    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_58

    aget-object v3, v0, v2

    :goto_16
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_4b

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eq v4, v3, :cond_25

    move-object v3, v4

    goto :goto_16

    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot transform generic signature of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with generic interface "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v0, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to a class."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4b
    aget-object v4, v0, v2

    check-cast v3, Ljava/lang/Class;

    invoke-direct {p0, p1, v4, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_58
    invoke-virtual {p2, v1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/ClassNode;)V

    :goto_5b
    return-void
.end method

.method private j6(Lorg/codehaus/groovy/ast/MethodNode;Ljava/lang/reflect/Method;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->tp:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    if-eqz p2, :cond_d

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, p2}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    :cond_d
    new-instance p2, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;

    invoke-direct {p2, v0}, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;)V

    invoke-virtual {p1, p2}, Lorg/codehaus/groovy/ast/MethodNode;->j6(Lorg/codehaus/groovy/ast/stmt/Statement;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/codehaus/groovy/ast/MethodNode;->DW(Z)V

    return-void
.end method

.method private j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    new-instance v3, Lorg/codehaus/groovy/ast/AnnotationNode;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codehaus/groovy/ast/AnnotationNode;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-direct {p0, v3, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/AnnotationNode;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p2, v3}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/AnnotationNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 9

    array-length v0, p2

    new-array v1, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_13

    aget-object v3, p2, v2

    aget-object v4, p3, v2

    invoke-direct {p0, p1, v3, v4}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    return-object v1
.end method

.method private j6([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/GenericsType;
    .registers 7

    array-length v0, p1

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    array-length v0, p1

    new-array v0, v0, [Lorg/codehaus/groovy/ast/GenericsType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    aget-object v4, p1, v2

    instance-of v4, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    goto :goto_29

    :cond_22
    new-instance v4, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {v4, v3}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    aput-object v4, v0, v2

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    return-object v0
.end method

.method private j6([Ljava/lang/reflect/TypeVariable;)[Lorg/codehaus/groovy/ast/GenericsType;
    .registers 5

    array-length v0, p1

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    array-length v0, p1

    new-array v0, v0, [Lorg/codehaus/groovy/ast/GenericsType;

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_17

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;
    .registers 14

    sget-object v0, Lorg/codehaus/groovy/ast/Parameter;->u7:[Lorg/codehaus/groovy/ast/Parameter;

    array-length v1, p2

    if-lez v1, :cond_1e

    array-length v0, p2

    new-array v1, v0, [Lorg/codehaus/groovy/ast/Parameter;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1d

    aget-object v5, p2, v2

    aget-object v6, p3, v2

    aget-object v7, p4, v2

    move-object v3, p0

    move-object v4, p1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;I)Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    move-object v0, v1

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_10} :catch_109

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_3f

    aget-object v14, v11, v13

    :try_start_15
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    new-instance v15, Lorg/codehaus/groovy/ast/FieldNode;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    const/4 v7, 0x0

    move-object v2, v15

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/codehaus/groovy/ast/FieldNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/expr/Expression;)V

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual {v8, v15}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/FieldNode;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_3f
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2
    :try_end_44
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_15 .. :try_end_44} :catch_109

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v3, :cond_a3

    aget-object v5, v2, v4

    :try_start_49
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v1, v0, v6, v7}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-direct {v1, v0, v6, v7, v11}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v1, v0, v6, v7}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v16

    new-instance v6, Lorg/codehaus/groovy/ast/MethodNode;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    const/16 v17, 0x0

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lorg/codehaus/groovy/ast/MethodNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Z)V

    invoke-direct {v1, v6, v5}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/MethodNode;Ljava/lang/reflect/Method;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {v1, v7, v6}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/reflect/TypeVariable;)[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/codehaus/groovy/ast/MethodNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    invoke-virtual {v8, v6}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/MethodNode;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_a3
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2
    :try_end_a8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_49 .. :try_end_a8} :catch_109

    const/4 v4, 0x0

    :goto_a9
    if-ge v4, v3, :cond_d4

    aget-object v5, v2, v4

    :try_start_ad
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-direct {v1, v0, v6, v7, v11}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v1, v0, v7, v11}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v6, v7, v11}, Lorg/codehaus/groovy/ast/ClassNode;->j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    :cond_d4
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_e5

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/codehaus/groovy/ast/ClassNode;->FH(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_e5
    invoke-direct {v1, v0, v8, v10}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/Class;)V

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {v1, v0, v8}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->J0()Lorg/codehaus/groovy/ast/PackageNode;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V
    :try_end_108
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_ad .. :try_end_108} :catch_109

    :cond_108
    return-void

    :catch_109
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Lorg/codehaus/groovy/ast/ClassNode;->Hw(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to missing dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    goto :goto_132

    :goto_131
    throw v0

    :goto_132
    goto :goto_131
.end method
