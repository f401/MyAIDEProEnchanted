.class public Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;
.super Ljava/lang/Object;
.source "FontLoaderUtil.java"


# static fields
.field static CacheSize:I

.field static sInstance:Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;


# instance fields
.field mContext:Landroid/content/Context;

.field mTypeFaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x400000

    sput v0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->CacheSize:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/util/LruCache;

    sget v1, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->CacheSize:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mTypeFaceCache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance()Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;
    .registers 1

    .line 16
    sget-object v0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->sInstance:Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;

    invoke-direct {v0, p0}, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->sInstance:Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;

    return-void
.end method


# virtual methods
.method public loadTextTure(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    .line 24
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mTypeFaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 25
    if-nez v0, :cond_0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mTypeFaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    goto :goto_0
.end method
