.class Landroidx/core/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;


# static fields
.field private static final INVALID_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# instance fields
.field private mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V
    .registers 7

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method private findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 5

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    new-instance v1, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;

    invoke-direct {v1, p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v0, p2, v1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-object v0
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_35

    const/16 v0, 0x190

    move v8, v0

    :goto_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_39

    move v0, v1

    :goto_e
    const/4 v3, 0x0

    const v5, 0x7fffffff

    array-length v9, p0

    move v7, v2

    :goto_14
    if-ge v7, v9, :cond_3d

    aget-object v4, p0, v7

    invoke-interface {p2, v4}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-interface {p2, v4}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_3b

    move v6, v2

    :goto_28
    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v6, v10

    if-eqz v3, :cond_2f

    if-le v5, v6, :cond_31

    :cond_2f
    move-object v3, v4

    move v5, v6

    :cond_31
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_14

    :cond_35
    const/16 v0, 0x2bc

    move v8, v0

    goto :goto_9

    :cond_39
    move v0, v2

    goto :goto_e

    :cond_3b
    move v6, v1

    goto :goto_28

    :cond_3d
    return-object v3
.end method

.method private static getUniqueKey(Landroid/graphics/Typeface;)J
    .registers 6

    const-wide/16 v2, 0x0

    if-nez p0, :cond_6

    move-wide v0, v2

    :goto_5
    return-wide v0

    :cond_6
    :try_start_6
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_1b} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_1b} :catch_1d

    move-result-wide v0

    goto :goto_5

    :catch_1d
    move-exception v0

    const-string v1, "TypefaceCompatBaseImpl"

    const-string v4, "Could not retrieve font from family."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    goto :goto_5

    :catch_27
    move-exception v0

    const-string v1, "TypefaceCompatBaseImpl"

    const-string v4, "Could not retrieve font from family."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    goto :goto_5
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 7

    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v1, v0, p4}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V

    goto :goto_7
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 8

    const/4 v1, 0x0

    array-length v0, p3

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    :goto_5
    return-object v1

    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_27
    .catchall {:try_start_a .. :try_end_15} :catchall_24

    move-result-object v0

    :try_start_16
    invoke-virtual {p0, p1, v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2d
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    move-result-object v1

    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_1e
    move-exception v1

    move-object v2, v1

    :goto_20
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_24
    move-exception v2

    move-object v0, v1

    goto :goto_20

    :catch_27
    move-exception v0

    move-object v0, v1

    :goto_29
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_2d
    move-exception v2

    goto :goto_29
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {v1, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_23
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_23
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :catch_23
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {v1, p2, p3}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_23
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_23
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :catch_23
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 4

    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;

    invoke-direct {v0, p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method getFontFamily(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .registers 6

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v2, p0, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    goto :goto_b
.end method
