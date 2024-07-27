.class public Landroidj/support/v4/app/SupportActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroidj/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroidj/support/v4/app/SupportActivity$ExtraData;",
            ">;",
            "Landroidj/support/v4/app/SupportActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroidj/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/SupportActivity;->mExtraDataMap:Landroidj/support/v4/util/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public getExtraData(Ljava/lang/Class;)Landroidj/support/v4/app/SupportActivity$ExtraData;
    .registers 3
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidj/support/v4/app/SupportActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/SupportActivity;->mExtraDataMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/SupportActivity$ExtraData;

    return-object v0
.end method

.method public putExtraData(Landroidj/support/v4/app/SupportActivity$ExtraData;)V
    .registers 4
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/SupportActivity;->mExtraDataMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
