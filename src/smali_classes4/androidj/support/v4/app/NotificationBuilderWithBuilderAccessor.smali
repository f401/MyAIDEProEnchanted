.class public interface abstract Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract build()Landroid/app/Notification;
.end method

.method public abstract getBuilder()Landroid/app/Notification$Builder;
.end method
