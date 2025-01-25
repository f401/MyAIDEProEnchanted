.class public Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;
.super Lorg/codehaus/groovy/reflection/CachedClass;


# instance fields
.field private final a8:[Ljava/lang/Class;

.field private final lg:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass;->v5()[Lorg/codehaus/groovy/reflection/CachedMethod;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p2, :cond_29

    aget-object v4, p1, v3

    const-string v5, "doCall"

    invoke-virtual {v4}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v4}, Lorg/codehaus/groovy/reflection/CachedMethod;->getNativeParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    if-le v5, v2, :cond_26

    array-length v0, v4

    move v2, v0

    move-object v0, v4

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_29
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;->lg:I

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;->a8:[Ljava/lang/Class;

    return-void
.end method
