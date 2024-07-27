.class public final Lcom/tencent/mm/androlib/res/data/ResType;
.super Ljava/lang/Object;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackage:Lcom/tencent/mm/androlib/res/data/ResPackage;

.field private final specNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/androlib/res/data/ResPackage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/data/ResType;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/androlib/res/data/ResType;->mPackage:Lcom/tencent/mm/androlib/res/data/ResPackage;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResType;->specNames:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public putSpecResguardName(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResType;->specNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "spec proguard name duplicate in a singal type %s, spec name: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResType;->specNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/data/ResType;->mName:Ljava/lang/String;

    return-object v0
.end method
