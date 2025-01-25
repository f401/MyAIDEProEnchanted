.class Landroidx/core/graphics/TypefaceCompatApi24Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v2, "addFontWeightStyle"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v2, Landroid/graphics/Typeface;

    const-string v5, "createFromFamiliesWithDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_46} :catch_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_46} :catch_64

    move-result-object v1

    move-object v2, v1

    :goto_48
    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v4, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void

    :catch_51
    move-exception v0

    :goto_52
    const-string v2, "TypefaceCompatApi24Impl"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_48

    :catch_64
    move-exception v0

    goto :goto_52
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_30

    move-result v0

    :goto_2c
    return v0

    :catch_2d
    move-exception v0

    :goto_2e
    move v0, v1

    goto :goto_2c

    :catch_30
    move-exception v0

    goto :goto_2e
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1b} :catch_1f

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    :goto_1d
    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v0

    goto :goto_1d
.end method

.method public static isUsable()Z
    .registers 2

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    const-string v0, "TypefaceCompatApi24Impl"

    const-string v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static newFamily()Ljava/lang/Object;
    .registers 2

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_f

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    :goto_b
    const/4 v0, 0x0

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_b

    :catch_f
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 14

    const/4 v0, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v4, :cond_31

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v6

    invoke-static {p1, p3, v6}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v7

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    invoke-static {v2, v6, v7, v8, v5}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_31
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_7
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 14

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    new-instance v4, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    array-length v5, p3

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v5, :cond_44

    aget-object v6, p3, v2

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_28

    invoke-static {p1, p2, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    if-nez v0, :cond_2c

    move-object v0, v1

    goto :goto_8

    :cond_2c
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v6

    invoke-static {v3, v0, v7, v8, v6}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_40

    move-object v0, v1

    goto :goto_8

    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_44
    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_4c

    move-object v0, v1

    goto :goto_8

    :cond_4c
    invoke-static {v0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_8
.end method
