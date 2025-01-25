.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"

.field private static sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static sFontFamily:Ljava/lang/Class;

.field private static sFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field private static sHasInitBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .registers 8

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_22} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_22} :catch_2b

    move-result v0

    return v0

    :catch_24
    move-exception v0

    :goto_25
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2b
    move-exception v0

    goto :goto_25
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 6

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1d} :catch_25

    return-object v0

    :catch_1e
    move-exception v0

    :goto_1f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception v0

    goto :goto_1f
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static init()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sput-boolean v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    :try_start_9
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v0, "addFontWeightStyle"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v0, Landroid/graphics/Typeface;

    const-string v5, "createFromFamiliesWithDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_44} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_44} :catch_61

    move-result-object v0

    :goto_45
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v4, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    goto :goto_6

    :catch_4e
    move-exception v0

    :goto_4f
    const-string v2, "TypefaceCompatApi21Impl"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_45

    :catch_61
    move-exception v0

    goto :goto_4f
.end method

.method private static newFamily()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_3
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_b} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_b} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_b} :catch_16

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    :goto_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_14
    move-exception v0

    goto :goto_e

    :catch_16
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 14

    const/4 v0, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v4, :cond_4a

    aget-object v5, v3, v1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_16

    :goto_15
    return-object v0

    :cond_16
    :try_start_16
    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v7

    invoke-static {v6, p3, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_45
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_15

    :cond_24
    :try_start_24
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    invoke-static {v2, v7, v8, v5}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_33} :catch_45
    .catchall {:try_start_24 .. :try_end_33} :catchall_40

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_15

    :cond_3a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catchall_40
    move-exception v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v0

    :catch_45
    move-exception v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_15

    :cond_4a
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_15
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 10

    const/4 v0, 0x0

    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_e
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_22

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_5

    :catch_20
    move-exception v1

    goto :goto_5

    :cond_22
    :try_start_22
    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_45

    :cond_2e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_57

    :try_start_37
    invoke-super {p0, p1, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_50

    move-result-object v1

    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_57

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_20

    :cond_43
    move-object v0, v1

    goto :goto_5

    :cond_45
    :try_start_45
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_57

    move-result-object v1

    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_20

    :cond_4e
    move-object v0, v1

    goto :goto_5

    :catchall_50
    move-exception v1

    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v4

    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_60

    :goto_56
    :try_start_56
    throw v4
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v1

    :try_start_58
    throw v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v3

    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_65

    :cond_5f
    :goto_5f
    :try_start_5f
    throw v3
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_60} :catch_20

    :catchall_60
    move-exception v3

    :try_start_61
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_57

    goto :goto_56

    :catchall_65
    move-exception v2

    :try_start_66
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_20

    goto :goto_5f
.end method
