.class public Landroidx/lifecycle/MethodCallsLogger;
.super Ljava/lang/Object;


# instance fields
.field private mCalledMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public approveCall(Ljava/lang/String;I)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    :goto_10
    and-int v0, v2, p2

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_15
    iget-object v1, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    or-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_22
    move v2, v1

    goto :goto_10

    :cond_24
    move v0, v1

    goto :goto_15
.end method
