.class public Labcd/uA;
.super Ljava/lang/Object;


# static fields
.field static DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/tA;",
            ">;"
        }
    .end annotation
.end field

.field static j6:Labcd/sA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/wA;

    invoke-direct {v0}, Labcd/wA;-><init>()V

    sput-object v0, Labcd/uA;->j6:Labcd/sA;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Labcd/uA;->DW:Ljava/util/Map;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Labcd/tA;
    .registers 3

    sget-object v0, Labcd/uA;->DW:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tA;

    if-nez v0, :cond_0

    sget-object v0, Labcd/uA;->j6:Labcd/sA;

    invoke-interface {v0, p0}, Labcd/sA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sget-object v1, Labcd/uA;->DW:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
