.class Lcom/crashlytics/android/core/pa;
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

    iput-object p1, p0, Lcom/crashlytics/android/core/pa;->j6:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/pa;->j6:Lcom/crashlytics/android/core/DevicePowerStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/DevicePowerStateListener;->j6(Lcom/crashlytics/android/core/DevicePowerStateListener;Z)Z

    return-void
.end method
