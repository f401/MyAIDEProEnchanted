.class public Lorg/apache/tools/ant/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;,
        Lorg/apache/tools/ant/util/CollectionUtils$EmptyEnumeration;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/apache/tools/ant/util/CollectionUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method public static append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TE;>;",
            "Ljava/util/Enumeration",
            "<TE;>;)",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;-><init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static asCollection(Ljava/util/Iterator;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 219
    return-object v0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TE;>;)",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    new-instance v0, Lorg/apache/tools/ant/util/CollectionUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/CollectionUtils$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static asIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v0, Lorg/apache/tools/ant/util/CollectionUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/CollectionUtils$2;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static equals(Ljava/util/Dictionary;Ljava/util/Dictionary;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary",
            "<**>;",
            "Ljava/util/Dictionary",
            "<**>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 72
    if-ne p0, p1, :cond_5

    .line 73
    const/4 v0, 0x1

    .line 86
    :cond_4
    :goto_4
    return v0

    .line 76
    :cond_5
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p0}, Ljava/util/Dictionary;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Dictionary;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 86
    invoke-virtual {p0}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda3;-><init>(Ljava/util/Dictionary;Ljava/util/Dictionary;)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    goto :goto_4
.end method

.method public static equals(Ljava/util/Vector;Ljava/util/Vector;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;",
            "Ljava/util/Vector",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static flattenToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method static synthetic lambda$equals$0(Ljava/util/Dictionary;Ljava/util/Dictionary;Ljava/lang/Object;)Z
    .registers 5

    .line 87
    invoke-virtual {p0, p2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$putAll$1(Ljava/util/Dictionary;Ljava/util/Dictionary;Ljava/lang/Object;)V
    .registers 4

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putAll(Ljava/util/Dictionary;Ljava/util/Dictionary;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Dictionary",
            "<-TK;-TV;>;",
            "Ljava/util/Dictionary",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/Dictionary;Ljava/util/Dictionary;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    return-void
.end method
