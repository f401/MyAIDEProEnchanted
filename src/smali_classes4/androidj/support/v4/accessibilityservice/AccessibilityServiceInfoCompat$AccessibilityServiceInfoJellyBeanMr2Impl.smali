.class Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl;
.super Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoJellyBeanMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompatJellyBeanMr2;->getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    return v0
.end method
