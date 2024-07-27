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

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6:[Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/codehaus/groovy/vmplugin/v5/PluginDefaultGroovyMethods;

    aput-object v1, v0, v2

    sput-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 7

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Z)V

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Z)V

    new-array v2, v2, [Lorg/codehaus/groovy/ast/GenericsType;

    const/4 v3, 0x0

    new-instance v4, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {v4, v1}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/reflect/GenericArrayType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/reflect/ParameterizedType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    return-object v0
.end method

.method private j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/WildcardType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/ParameterizedType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/GenericArrayType;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    new-instance v0, Lorg/codehaus/groovy/GroovyBugError;

    const-string v1, "Type is null. Most probably you let a transform reuse existing ClassNodes with generics information, that is now used in a wrong context."

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Ljava/lang/reflect/WildcardType;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "?"

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v1, v0}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, v4

    :goto_0
    new-instance v2, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v2, v5}, Lorg/codehaus/groovy/ast/GenericsType;->DW(Z)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v4}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    new-array v1, v5, [Lorg/codehaus/groovy/ast/GenericsType;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 6

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/CompileUnit;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p3}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :cond_0
    instance-of v1, p2, Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_1
.end method

.method private j6(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/GenericsType;
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    invoke-virtual {v1, v4}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_0

    new-instance v0, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Z)V

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;I)Lorg/codehaus/groovy/ast/Parameter;
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/codehaus/groovy/ast/Parameter;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/codehaus/groovy/ast/Parameter;-><init>(Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/String;)V

    invoke-direct {p0, p4, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    return-object v2
.end method

.method private j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;
    .registers 6

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, p1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ListExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/ListExpression;-><init>()V

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-eq v1, v2, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codehaus/groovy/ast/expr/ListExpression;->j6(Lorg/codehaus/groovy/ast/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Ljava/lang/annotation/RetentionPolicy;Lorg/codehaus/groovy/ast/AnnotationNode;)V
    .registers 6

    const/4 v2, 0x1

    sget-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->j6:[I

    invoke-virtual {p1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v2}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported Retention "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2, v2}, Lorg/codehaus/groovy/ast/AnnotationNode;->FH(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lorg/codehaus/groovy/ast/AnnotationNode;->DW(Z)V

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/AnnotationNode;Ljava/lang/annotation/Annotation;)V
    .registers 11

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/annotation/Retention;

    if-ne v0, v2, :cond_1

    check-cast p2, Ljava/lang/annotation/Retention;

    invoke-interface {p2}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/annotation/RetentionPolicy;Lorg/codehaus/groovy/ast/AnnotationNode;)V

    const-string v2, "value"

    new-instance v3, Lorg/codehaus/groovy/ast/expr/PropertyExpression;

    new-instance v4, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    const-class v5, Ljava/lang/annotation/RetentionPolicy;

    invoke-static {v5, v1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v0}, Ljava/lang/annotation/RetentionPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/codehaus/groovy/ast/expr/PropertyExpression;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v2, Ljava/lang/annotation/Target;

    if-ne v0, v2, :cond_3

    check-cast p2, Ljava/lang/annotation/Target;

    invoke-interface {p2}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    new-instance v2, Lorg/codehaus/groovy/ast/expr/ListExpression;

    invoke-direct {v2}, Lorg/codehaus/groovy/ast/expr/ListExpression;-><init>()V

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    new-instance v5, Lorg/codehaus/groovy/ast/expr/PropertyExpression;

    new-instance v6, Lorg/codehaus/groovy/ast/expr/ClassExpression;

    sget-object v7, Lorg/codehaus/groovy/ast/ClassHelper;->Mz:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v6, v7}, Lorg/codehaus/groovy/ast/expr/ClassExpression;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/codehaus/groovy/ast/expr/PropertyExpression;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/codehaus/groovy/ast/expr/ListExpression;->j6(Lorg/codehaus/groovy/ast/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "value"

    invoke-virtual {p1, v0, v2}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/Object;)Lorg/codehaus/groovy/ast/expr/Expression;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-array v0, v1, [Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/codehaus/groovy/ast/AnnotationNode;->j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/Class;)V
    .registers 9

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassNode;->u7:[Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p2, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/ClassNode;)V

    :goto_0
    return-void

    :cond_0
    array-length v0, v3

    new-array v4, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_3

    aget-object v1, v3, v2

    :goto_2
    instance-of v0, v1, Ljava/lang/Class;

    if-nez v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot transform generic signature of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with generic interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to a class."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/codehaus/groovy/GroovyBugError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    aget-object v0, v3, v2

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v4}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/MethodNode;Ljava/lang/reflect/Method;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->tp:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;

    invoke-direct {v1, v0}, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;)V

    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/ast/MethodNode;->j6(Lorg/codehaus/groovy/ast/stmt/Statement;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/MethodNode;->DW(Z)V

    return-void
.end method

.method private j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V
    .registers 8

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    new-instance v3, Lorg/codehaus/groovy/ast/AnnotationNode;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codehaus/groovy/ast/AnnotationNode;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    invoke-direct {p0, v3, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/AnnotationNode;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p2, v3}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/AnnotationNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 8

    array-length v0, p2

    new-array v1, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-direct {p0, p1, v2, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private j6([Ljava/lang/reflect/Type;)[Lorg/codehaus/groovy/ast/GenericsType;
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    new-array v2, v0, [Lorg/codehaus/groovy/ast/GenericsType;

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/Type;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    aget-object v4, p1, v0

    instance-of v4, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/codehaus/groovy/ast/GenericsType;

    invoke-direct {v4, v3}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;)V

    aput-object v4, v2, v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private j6([Ljava/lang/reflect/TypeVariable;)[Lorg/codehaus/groovy/ast/GenericsType;
    .registers 5

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lorg/codehaus/groovy/ast/GenericsType;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;
    .registers 12

    sget-object v0, Lorg/codehaus/groovy/ast/Parameter;->u7:[Lorg/codehaus/groovy/ast/Parameter;

    array-length v1, p2

    if-lez v1, :cond_1

    array-length v0, p2

    new-array v6, v0, [Lorg/codehaus/groovy/ast/Parameter;

    const/4 v5, 0x0

    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_0

    aget-object v2, p2, v5

    aget-object v3, p3, v5

    aget-object v4, p4, v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;I)Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v0

    aput-object v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v6

    :cond_1
    return-object v0
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 16

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v10, v8
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    :goto_0
    if-ge v6, v10, :cond_0

    aget-object v11, v8, v6

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    new-instance v0, Lorg/codehaus/groovy/ast/FieldNode;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/ast/FieldNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/expr/Expression;)V

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual {p2, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/FieldNode;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v7

    :goto_1
    if-ge v8, v11, :cond_1

    aget-object v12, v10, v8

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    new-instance v0, Lorg/codehaus/groovy/ast/MethodNode;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/groovy/ast/MethodNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Z)V

    invoke-direct {p0, v0, v12}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/MethodNode;Ljava/lang/reflect/Method;)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/reflect/TypeVariable;)[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/ast/MethodNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    invoke-virtual {p2, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/MethodNode;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v7

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-direct {p0, p1, v4, v5, v6}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;[Ljava/lang/reflect/Type;[Ljava/lang/Class;)[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/codehaus/groovy/ast/ClassNode;->j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/groovy/ast/ClassNode;->FH(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_3
    invoke-direct {p0, p1, p2, v9}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6(Lorg/codehaus/groovy/ast/CompileUnit;Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->J0()Lorg/codehaus/groovy/ast/PackageNode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/codehaus/groovy/vmplugin/v5/Java5;->j6([Ljava/lang/annotation/Annotation;Lorg/codehaus/groovy/ast/AnnotatedNode;)V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Lorg/codehaus/groovy/ast/ClassNode;->Hw(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to missing dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
