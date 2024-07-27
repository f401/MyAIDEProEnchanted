.class public Lsun/misc/resources/Messages_ko;
.super Ljava/util/ListResourceBundle;
.source "Messages_ko.java"


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

    const-string/jumbo v2, "\uc624\ub958: {0} JAR \ud30c\uc77c\uc5d0 \uc798\ubabb\ub41c \ubc84\uc804 \ud615\uc2dd\uc774 \uc0ac\uc6a9\ub418\uc5c8\uc2b5\ub2c8\ub2e4. \uc124\uba85\uc11c\ub97c \ucc38\uc870\ud558\uc5ec \uc9c0\uc6d0\ub418\ub294 \ubc84\uc804 \ud615\uc2dd\uc744 \ud655\uc778\ud558\uc2ed\uc2dc\uc624."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeerror"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\uc624\ub958: \ud544\uc694\ud55c {0} JAR \ud45c\uc2dc \uc18d\uc131\uc774 {1} JAR \ud30c\uc77c\uc5d0 \uc124\uc815\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\uc624\ub958: \ud544\uc694\ud55c JAR \ud45c\uc2dc \uc18d\uc131 \uc77c\ubd80\uac00 {0} JAR \ud30c\uc77c\uc5d0 \uc124\uc815\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/resources/Messages_ko;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_ko;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
