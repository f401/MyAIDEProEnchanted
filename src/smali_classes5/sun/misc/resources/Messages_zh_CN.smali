.class public Lsun/misc/resources/Messages_zh_CN;
.super Ljava/util/ListResourceBundle;
.source "Messages_zh_CN.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "optpkg.attributeerror"

    aput-object v1, v0, v4

    const-string v1, "错误：必要的 {0} JAR 标明属性未在 {1} JAR 文件中设置。"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "optpkg.versionerror"

    aput-object v3, v2, v4

    const-string v3, "错误：{0} JAR 文件中使用的版本格式无效。请检查文档以了解支持的版本格式。"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v0, v4

    const-string v2, "错误：某些必要的 JAR 标明属性未在 {0} JAR 文件中设置。"

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    sput-object v1, Lsun/misc/resources/Messages_zh_CN;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_zh_CN;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
