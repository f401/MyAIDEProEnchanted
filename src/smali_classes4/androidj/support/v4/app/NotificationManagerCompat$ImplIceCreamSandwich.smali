.class Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;
.super Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSideChannelBindFlags()I
    .registers 2

    const/16 v0, 0x21

    return v0
.end method
