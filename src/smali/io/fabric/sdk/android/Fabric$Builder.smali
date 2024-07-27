.class public Lio/fabric/sdk/android/Fabric$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/Fabric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private DW:[Lio/fabric/sdk/android/Kit;

.field private FH:Labcd/kz;

.field private Hw:Landroid/os/Handler;

.field private VH:Ljava/lang/String;

.field private Zo:Z

.field private gn:Ljava/lang/String;

.field private final j6:Landroid/content/Context;

.field private u7:Lio/fabric/sdk/android/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/h",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Lio/fabric/sdk/android/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs j6([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;
    .registers 13

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, p1

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    const/4 v4, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x243171f4

    if-eq v9, v10, :cond_3

    const v10, 0x6d1a7d18

    if-eq v9, v10, :cond_2

    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    if-eq v4, v1, :cond_4

    if-nez v0, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v4, "Fabric"

    const-string v7, "Fabric will not initialize any kits when Firebase automatic data collection is disabled; to use Third-party kits with automatic data collection disabled, initialize these kits via non-Fabric means."

    invoke-interface {v0, v4, v7}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "com.crashlytics.sdk.android:crashlytics"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v3

    goto :goto_1

    :cond_3
    const-string v9, "com.crashlytics.sdk.android:answers"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v1

    goto :goto_1

    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-array v0, v3, [Lio/fabric/sdk/android/Kit;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/Kit;

    :goto_3
    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, p1

    goto :goto_3
.end method

.method public j6()Lio/fabric/sdk/android/Fabric;
    .registers 11

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    if-nez v0, :cond_0

    invoke-static {}, Labcd/kz;->j6()Labcd/kz;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Zo:Z

    if-eqz v0, :cond_5

    new-instance v0, Lio/fabric/sdk/android/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/b;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    if-nez v0, :cond_4

    sget-object v0, Lio/fabric/sdk/android/h;->j6:Lio/fabric/sdk/android/h;

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v8, Lio/fabric/sdk/android/services/common/v;

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->VH:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v1, v0, v3, v4}, Lio/fabric/sdk/android/services/common/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v0, Lio/fabric/sdk/android/Fabric;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    iget-object v4, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    iget-boolean v6, p0, Lio/fabric/sdk/android/Fabric$Builder;->Zo:Z

    iget-object v7, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    iget-object v9, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-static {v9}, Lio/fabric/sdk/android/Fabric;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/Fabric;-><init>(Landroid/content/Context;Ljava/util/Map;Labcd/kz;Landroid/os/Handler;Lio/fabric/sdk/android/m;ZLio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/common/v;Landroid/app/Activity;)V

    return-object v0

    :cond_5
    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$000(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1
.end method
