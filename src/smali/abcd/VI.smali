.class public interface abstract Labcd/VI;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/VI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/UI;

    invoke-direct {v0}, Labcd/UI;-><init>()V

    sput-object v0, Labcd/VI;->j6:Labcd/VI;

    return-void
.end method


# virtual methods
.method public abstract j6(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end method
