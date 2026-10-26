.class public Lsun/misc/resources/Messages_es;
.super Ljava/util/ListResourceBundle;
.source "Messages_es.java"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "optpkg.attributeerror"

    aput-object v1, v0, v5

    const-string v1, "ERROR: El atributo obligatorio JAR manifest {0} no est\u00e1 definido en el archivo JAR {1}."

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "optpkg.attributeserror"

    aput-object v2, v1, v5

    const-string v2, "ERROR: Algunos atributos obligatorios JAR manifest no est\u00e1n definidos en el archivo JAR {0}."

    aput-object v2, v1, v6

    const/4 v2, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "optpkg.versionerror"

    aput-object v4, v3, v5

    const-string v4, "ERROR: El formato del archivo JAR {0} pertenece a una versi\u00f3n no v\u00e1lida. Busque en la documentaci\u00f3n un formato de una versi\u00f3n compatible."

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    sput-object v2, Lsun/misc/resources/Messages_es;->contents:[[Ljava/lang/Object;

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
    sget-object v0, Lsun/misc/resources/Messages_es;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
