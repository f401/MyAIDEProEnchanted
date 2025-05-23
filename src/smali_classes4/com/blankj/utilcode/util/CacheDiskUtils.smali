.class public final Lcom/blankj/utilcode/util/CacheDiskUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;,
        Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;
    }
.end annotation


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheDiskUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_PREFIX:Ljava/lang/String; = "cdu_"

.field private static final DEFAULT_MAX_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MAX_SIZE:J = 0x7fffffffffffffffL

.field private static final TYPE_BITMAP:Ljava/lang/String; = "bi_"

.field private static final TYPE_BYTE:Ljava/lang/String; = "by_"

.field private static final TYPE_DRAWABLE:Ljava/lang/String; = "dr_"

.field private static final TYPE_JSON_ARRAY:Ljava/lang/String; = "ja_"

.field private static final TYPE_JSON_OBJECT:Ljava/lang/String; = "jo_"

.field private static final TYPE_PARCELABLE:Ljava/lang/String; = "pa_"

.field private static final TYPE_SERIALIZABLE:Ljava/lang/String; = "se_"

.field private static final TYPE_STRING:Ljava/lang/String; = "st_"


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mCacheKey:Ljava/lang/String;

.field private mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

.field private final mMaxCount:I

.field private final mMaxSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;JI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    iput-wide p3, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    iput p5, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    return-void
.end method

.method private getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    iget-wide v2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    iget v4, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    invoke-direct/range {v0 .. v5}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JILcom/blankj/utilcode/util/CacheDiskUtils$1;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    iget-wide v2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxSize:J

    iget v4, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mMaxCount:I

    invoke-direct/range {v0 .. v5}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;-><init>(Ljava/io/File;JILcom/blankj/utilcode/util/CacheDiskUtils$1;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mDiskCacheManager:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    goto :goto_1a

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t make dirs in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CacheDiskUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    const-string v0, ""

    const-wide v2, 0x7fffffffffffffffL

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 5

    const-string v0, ""

    invoke-static {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/io/File;)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheDiskUtils;

    if-nez v0, :cond_48

    const-class v0, Lcom/blankj/utilcode/util/CacheDiskUtils;

    monitor-enter v0

    :try_start_2d
    sget-object v0, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheDiskUtils;

    if-nez v0, :cond_45

    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/blankj/utilcode/util/CacheDiskUtils;-><init>(Ljava/lang/String;Ljava/io/File;JI)V

    sget-object v0, Lcom/blankj/utilcode/util/CacheDiskUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_45
    const-class v1, Lcom/blankj/utilcode/util/CacheDiskUtils;

    monitor-exit v1

    :cond_48
    return-object v0

    :catchall_49
    move-exception v0

    const-class v1, Lcom/blankj/utilcode/util/CacheDiskUtils;

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_49

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;
    .registers 7

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "cacheUtils"

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance(Ljava/io/File;JI)Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    return-object v0
.end method

.method private realGetBytes(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private realGetBytes(Ljava/lang/String;[B)[B
    .registers 7

    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p2

    :cond_7
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$500(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$600([B)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    goto :goto_6

    :cond_1b
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$800([B)[B

    move-result-object p2

    goto :goto_6
.end method

.method private realPutBytes(Ljava/lang/String;[BI)V
    .registers 6

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ltz p3, :cond_f

    invoke-static {p3, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->access$100(I[B)[B

    move-result-object p2

    :cond_f
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$200(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromBytes(Ljava/io/File;[B)Z

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$300(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$400(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/io/File;)V

    goto :goto_2
.end method


# virtual methods
.method public clear()Z
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1100(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)Z

    move-result v0

    goto :goto_7
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_17
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCacheCount()I
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$1000(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)I

    move-result v0

    goto :goto_7
.end method

.method public getCacheSize()J
    .registers 3

    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$900(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;)J

    move-result-wide v0

    goto :goto_8
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_17
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ja_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2JSONArray([B)Lorg/json/JSONArray;

    move-result-object p2

    goto :goto_17
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2JSONObject([B)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_17
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pa_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p3

    :cond_18
    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Parcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_17
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "se_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Object([B)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "st_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realGetBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p2

    :cond_18
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2String([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_17
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pa_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->parcelable2Bytes(Landroid/os/Parcelable;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "se_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->serializable2Bytes(Ljava/io/Serializable;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "st_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ja_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->jsonArray2Bytes(Lorg/json/JSONArray;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/UtilsBridge;->jsonObject2Bytes(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;[BI)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->realPutBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDiskCacheManager()Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "by_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "st_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ja_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bi_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pa_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "se_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;->access$700(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_c0
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
