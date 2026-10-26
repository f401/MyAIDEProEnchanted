.class public Lsun/misc/resources/Messages_sv;
.super Ljava/util/ListResourceBundle;
.source "Messages_sv.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.versionerror"

    aput-object v2, v1, v3

    const-string v2, "FEL: Ogiltigt versionsformat i {0} JAR-fil. Kontrollera i dokumentationen vilket versionsformat som st\u00f6ds."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeerror"

    aput-object v2, v1, v3

    const-string v2, "FEL: Det JAR manifest-attribut {0} som kr\u00e4vs \u00e4r inte angivet i {1} JAR-filen."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v3

    const-string v2, "FEL: Vissa JAR manifest-attribut som kr\u00e4vs \u00e4r inte angivna i {0} JAR-filen."

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/resources/Messages_sv;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lsun/misc/resources/Messages_sv;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
