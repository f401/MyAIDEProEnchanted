.class Lcom/crashlytics/android/core/oa;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/DevicePowerStateListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/DevicePowerStateListener;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/DevicePowerStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/oa;->j6:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/crashlytics/android/core/oa;->j6:Lcom/crashlytics/android/core/DevicePowerStateListener;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/DevicePowerStateListener;->j6(Lcom/crashlytics/android/core/DevicePowerStateListener;Z)Z

    return-void
.end method
