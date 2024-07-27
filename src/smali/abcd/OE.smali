.class public abstract Labcd/OE;
.super Ljava/lang/Object;


# static fields
.field protected static final j6:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refs/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "refs/tags/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "refs/heads/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "refs/remotes/"

    aput-object v2, v0, v1

    sput-object v0, Labcd/OE;->j6:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract DW(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end method

.method public abstract DW()V
.end method

.method public abstract FH(Ljava/lang/String;)Z
.end method

.method public abstract j6(Labcd/ME;)Labcd/ME;
.end method

.method public abstract j6(Ljava/lang/String;)Labcd/ME;
.end method

.method public abstract j6(Ljava/lang/String;Z)Labcd/RE;
.end method

.method public abstract j6()V
.end method
