.class final Lorg/apache/commons/io/serialization/FullClassNameMatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/io/serialization/ClassNameMatcher;


# instance fields
.field private final classesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/serialization/FullClassNameMatcher;->classesSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/io/serialization/FullClassNameMatcher;->classesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
