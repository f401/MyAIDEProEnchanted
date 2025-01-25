.class final Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonConfigurationInstances"
.end annotation


# instance fields
.field custom:Ljava/lang/Object;

.field fragments:Landroidj/support/v4/app/FragmentManagerNonConfig;

.field loaders:Landroidj/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
