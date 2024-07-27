.class public Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;
.super Lorg/codehaus/groovy/reflection/CachedClass;


# instance fields
.field private final a8:[Ljava/lang/Class;

.field private final lg:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 12

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass;->v5()[Lorg/codehaus/groovy/reflection/CachedMethod;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    const-string v7, "doCall"

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lorg/codehaus/groovy/reflection/CachedMethod;->getNativeParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v7, v1

    if-le v7, v0, :cond_1

    array-length v0, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;->lg:I

    iput-object v2, p0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;->a8:[Ljava/lang/Class;

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method
