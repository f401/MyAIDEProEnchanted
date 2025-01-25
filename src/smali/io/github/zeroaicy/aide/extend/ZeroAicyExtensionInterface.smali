.class public Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;
.super Ljava/lang/Object;
.source "ZeroAicyExtensionInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidProject()Labcd/gj;
    .registers 1

    .line 28
    new-instance v0, Lcom/aide/ui/AndroidProject;

    invoke-direct {v0}, Lcom/aide/ui/AndroidProject;-><init>()V

    return-object v0
.end method

.method public static getExternalPackagingServiceClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/aide/ui/build/packagingservice/ExternalPackagingService;",
            ">;"
        }
    .end annotation

    .line 24
    const-class v0, Lio/github/zeroaicy/aide/services/ZeroAicyExternalPackagingService;

    return-object v0
.end method
