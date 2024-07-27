.class public Lcom/s1243808733/aide/api/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;
    }
.end annotation


# static fields
.field private static sIMainActivity:Lcom/s1243808733/aide/api/MainActivityEvent;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;

    invoke-direct {v0}, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/api/ApiManager;->sIMainActivity:Lcom/s1243808733/aide/api/MainActivityEvent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;
    .registers 1

    .line 19
    sget-object v0, Lcom/s1243808733/aide/api/ApiManager;->sIMainActivity:Lcom/s1243808733/aide/api/MainActivityEvent;

    return-object v0
.end method
