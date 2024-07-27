.class public Lsun/misc/resources/Messages_ja;
.super Ljava/util/ListResourceBundle;
.source "Messages_ja.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.versionerror"

    aput-object v2, v1, v3

    const-string v2, "\u30a8\u30e9\u30fc: JAR \u30d5\u30a1\u30a4\u30eb {0} \u3067\u7121\u52b9\u306a\u30d0\u30fc\u30b8\u30e7\u30f3\u5f62\u5f0f\u304c\u4f7f\u7528\u3055\u308c\u3066\u3044\u307e\u3059\u3002\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u308b\u30d0\u30fc\u30b8\u30e7\u30f3\u5f62\u5f0f\u306b\u3064\u3044\u3066\u306e\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeerror"

    aput-object v2, v1, v3

    const-string v2, "\u30a8\u30e9\u30fc: \u5fc5\u8981\u306a JAR \u30de\u30cb\u30d5\u30a7\u30b9\u30c8\u5c5e\u6027 {0} \u304c JAR \u30d5\u30a1\u30a4\u30eb {1} \u306b\u8a2d\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v3

    const-string v2, "\u30a8\u30e9\u30fc: \u8907\u6570\u306e\u5fc5\u8981\u306a JAR \u30de\u30cb\u30d5\u30a7\u30b9\u30c8\u5c5e\u6027\u304c JAR \u30d5\u30a1\u30a4\u30eb {0} \u306b\u8a2d\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/resources/Messages_ja;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .registers 2

    .line 43
    sget-object v0, Lsun/misc/resources/Messages_ja;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
