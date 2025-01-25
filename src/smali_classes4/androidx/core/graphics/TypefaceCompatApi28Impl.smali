.class public Landroidx/core/graphics/TypefaceCompatApi28Impl;
.super Landroidx/core/graphics/TypefaceCompatApi26Impl;


# static fields
.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi28Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi28Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "sans-serif"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2f} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2f} :catch_37

    return-object v0

    :catch_30
    move-exception v0

    :goto_31
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_37
    move-exception v0

    goto :goto_31
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v5, 0x1

    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "createFromFamiliesWithDefault"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0
.end method
