.class public Lsun/misc/resources/Messages_fr;
.super Ljava/util/ListResourceBundle;
.source "Messages_fr.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "optpkg.attributeerror"

    aput-object v1, v0, v5

    const-string v1, "ERREUR\u00a0: L\'\'attribut manifeste JAR {0} n\u00e9cessaire n\'\'est pas d\u00e9fini pour le fichier {1}. "

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v5

    const-string v2, "ERREUR\u00a0: Certains attributs manifeste JAR {0} n\u00e9cessaires ne sont pas d\u00e9finis pour le fichier {1}. "

    aput-object v2, v1, v6

    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "optpkg.versionerror"

    aput-object v4, v3, v5

    const-string v4, "ERREUR\u00a0: Format de version utilis\u00e9 pour le fichier JAR {0} non valide. Consultez la documentation pour voir le format de version pris en charge."

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    sput-object v2, Lsun/misc/resources/Messages_fr;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_fr;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
