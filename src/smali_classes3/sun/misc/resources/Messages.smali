.class public Lsun/misc/resources/Messages;
.super Ljava/util/ListResourceBundle;
.source "Messages.java"


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

    const-string v2, "ERROR: Invalid version format used in {0} JAR file. Check the documentation for the supported version format."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeerror"

    aput-object v2, v1, v3

    const-string v2, "ERROR: The required {0} JAR manifest attribute is not set in {1} JAR file."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v3

    const-string v2, "ERROR: Some required JAR manifest attributes are not set in {0} JAR file."

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/resources/Messages;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
