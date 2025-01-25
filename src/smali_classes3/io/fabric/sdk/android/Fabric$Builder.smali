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
            "Lio/fabric/sdk/android/h<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Lio/fabric/sdk/android/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs j6([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;
    .registers 12

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_6a

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v3, v1, :cond_5f

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x243171f4

    const/4 v9, 0x1

    if-eq v7, v8, :cond_3b

    const v8, 0x6d1a7d18

    if-eq v7, v8, :cond_31

    goto :goto_45

    :cond_31
    const-string v7, "com.crashlytics.sdk.android:crashlytics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x0

    goto :goto_46

    :cond_3b
    const-string v7, "com.crashlytics.sdk.android:answers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v6, -0x1

    :goto_46
    if-eqz v6, :cond_59

    if-eq v6, v9, :cond_59

    if-nez v4, :cond_5c

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const-string v5, "Fabric"

    const-string v6, "Fabric will not initialize any kits when Firebase automatic data collection is disabled; to use Third-party kits with automatic data collection disabled, initialize these kits via non-Fabric means."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_5c

    :cond_59
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_5f
    new-array p1, v2, [Lio/fabric/sdk/android/Kit;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/fabric/sdk/android/Kit;

    :cond_67
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    return-object p0

    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Kits already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_73

    :goto_72
    throw p1

    :goto_73
    goto :goto_72
.end method

.method public j6()Lio/fabric/sdk/android/Fabric;
    .registers 12

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    if-nez v0, :cond_a

    invoke-static {}, Labcd/kz;->j6()Labcd/kz;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    :cond_a
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    if-nez v0, :cond_19

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    :cond_19
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->Zo:Z

    if-eqz v0, :cond_28

    new-instance v0, Lio/fabric/sdk/android/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/b;-><init>(I)V

    goto :goto_2d

    :cond_28
    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    :goto_2d
    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    :cond_2f
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    :cond_3b
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    if-nez v0, :cond_43

    sget-object v0, Lio/fabric/sdk/android/h;->j6:Lio/fabric/sdk/android/h;

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    :cond_43
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->DW:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_4d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_55

    :cond_4d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$000(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    :goto_55
    move-object v3, v0

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Lio/fabric/sdk/android/services/common/v;

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->gn:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric$Builder;->VH:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v9, v2, v0, v1, v4}, Lio/fabric/sdk/android/services/common/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v0, Lio/fabric/sdk/android/Fabric;

    iget-object v4, p0, Lio/fabric/sdk/android/Fabric$Builder;->FH:Labcd/kz;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric$Builder;->Hw:Landroid/os/Handler;

    iget-object v6, p0, Lio/fabric/sdk/android/Fabric$Builder;->v5:Lio/fabric/sdk/android/m;

    iget-boolean v7, p0, Lio/fabric/sdk/android/Fabric$Builder;->Zo:Z

    iget-object v8, p0, Lio/fabric/sdk/android/Fabric$Builder;->u7:Lio/fabric/sdk/android/h;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric$Builder;->j6:Landroid/content/Context;

    invoke-static {v1}, Lio/fabric/sdk/android/Fabric;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/fabric/sdk/android/Fabric;-><init>(Landroid/content/Context;Ljava/util/Map;Labcd/kz;Landroid/os/Handler;Lio/fabric/sdk/android/m;ZLio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/common/v;Landroid/app/Activity;)V

    return-object v0
.end method
