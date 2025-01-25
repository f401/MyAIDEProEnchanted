.class Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/CachedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/groovy/reflection/CachedMethod$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/CachedMethod$MyComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-virtual {p1, p2}, Lorg/codehaus/groovy/reflection/CachedMethod;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    instance-of v0, p2, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_17

    check-cast p2, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-virtual {p2, p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->compareTo(Ljava/lang/Object;)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_17
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "One of the two comparables must be a CachedMethod"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
