.class public Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;
.super Ljava/lang/Object;
.source "FontLoaderUtil.java"


# static fields
.field static CacheSize:I = 0x400000

.field static sInstance:Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;


# instance fields
.field mContext:Landroid/content/Context;

.field mTypeFaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Landroid/util/LruCache;

    sget v0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->CacheSize:I

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mTypeFaceCache:Landroid/util/LruCache;

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

    if-nez v0, :cond_1d

    .line 27
    :try_start_a
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    if-eqz v0, :cond_1d

    .line 31
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->mTypeFaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method
