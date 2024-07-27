.class public Lsun/misc/resources/Messages_sv;
.super Ljava/util/ListResourceBundle;
.source "Messages_sv.java"


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

    const-string v1, "optpkg.versionerror"

    aput-object v1, v0, v4

    const-string v1, "FEL: Ogiltigt versionsformat i {0} JAR-fil. Kontrollera i dokumentationen vilket versionsformat som st\u00f6ds."

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v4

    const-string v2, "FEL: Vissa JAR manifest-attribut som kr\u00e4vs \u00e4r inte angivna i {0} JAR-filen."

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    aput-object v0, v2, v4

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "optpkg.attributeerror"

    aput-object v3, v0, v4

    const-string v3, "FEL: Det JAR manifest-attribut {0} som kr\u00e4vs \u00e4r inte angivet i {1} JAR-filen."

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    sput-object v2, Lsun/misc/resources/Messages_sv;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_sv;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
