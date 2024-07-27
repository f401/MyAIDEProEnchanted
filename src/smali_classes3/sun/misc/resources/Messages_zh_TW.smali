.class public Lsun/misc/resources/Messages_zh_TW;
.super Ljava/util/ListResourceBundle;
.source "Messages_zh_TW.java"


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

    const-string/jumbo v2, "\u932f\u8aa4: {0} JAR \u6a94\u4f7f\u7528\u4e86\u7121\u6548\u7684\u7248\u672c\u683c\u5f0f\u3002\u8acb\u6aa2\u67e5\u6587\u4ef6\uff0c\u4ee5\u7372\u5f97\u652f\u63f4\u7684\u7248\u672c\u683c\u5f0f\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeerror"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u932f\u8aa4: {1} JAR \u6a94\u4e2d\u672a\u8a2d\u5b9a\u5fc5\u8981\u7684 {0} JAR \u6a19\u660e\u5c6c\u6027\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u932f\u8aa4: {0} JAR \u6a94\u4e2d\u672a\u8a2d\u5b9a\u67d0\u4e9b\u5fc5\u8981\u7684 JAR \u6a19\u660e\u5c6c\u6027\u3002"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/resources/Messages_zh_TW;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_zh_TW;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
