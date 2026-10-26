.class public Lcom/baidu/android/common/util/CommonParam;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "CommonParam"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
