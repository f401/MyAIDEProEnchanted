.class public Ljavax/lang/model/util/ElementFilter;
.super Ljava/lang/Object;
.source "ElementFilter.java"


# static fields
.field private static CONSTRUCTOR_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static FIELD_KINDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static METHOD_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static PACKAGE_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static TYPE_KINDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    .line 71
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    .line 73
    sget-object v0, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    .line 74
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    .line 76
    sget-object v0, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    .line 77
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    .line 79
    sget-object v0, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    .line 80
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    .line 82
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    sget-object v3, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    .line 83
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static constructorsIn(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/VariableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static fieldsIn(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/VariableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljavax/lang/model/element/Element;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 193
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 196
    :cond_27
    return-object v1
.end method

.method public static methodsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static methodsIn(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static packagesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/PackageElement;",
            ">;"
        }
    .end annotation

    .line 174
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/PackageElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static packagesIn(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/PackageElement;",
            ">;"
        }
    .end annotation

    .line 184
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/PackageElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljavax/lang/model/element/Element;",
            ">(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 204
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 205
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 206
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 207
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 209
    :cond_27
    return-object v1
.end method

.method public static typesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/TypeElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static typesIn(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Ljavax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    const-class v1, Ljavax/lang/model/element/TypeElement;

    invoke-static {p0, v0, v1}, Ljavax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
