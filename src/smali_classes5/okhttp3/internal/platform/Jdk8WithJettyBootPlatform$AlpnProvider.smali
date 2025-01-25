.class Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlpnProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_f

    sget-object p3, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_f
    const-string v4, "supports"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_20

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1f
    return-object v1

    :cond_20
    const-string v4, "unsupported"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_2f

    iput-boolean v5, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    goto :goto_1f

    :cond_2f
    const-string v4, "protocols"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    array-length v4, p3

    if-nez v4, :cond_3d

    iget-object v1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    goto :goto_1f

    :cond_3d
    const-string v4, "selectProtocol"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "select"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    :cond_4d
    const-class v4, Ljava/lang/String;

    if-ne v4, v0, :cond_84

    array-length v0, p3

    if-ne v0, v5, :cond_84

    aget-object v0, p3, v3

    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_84

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_61
    if-ge v2, v4, :cond_78

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    iput-object v1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    goto :goto_1f

    :cond_74
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_61

    :cond_78
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1f

    :cond_84
    const-string v0, "protocolSelected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "selected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_94
    array-length v0, p3

    if-ne v0, v5, :cond_9e

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    goto :goto_1f

    :cond_9e
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1f
.end method
