.class Landroidj/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ServiceCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForeground(Landroid/app/Service;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/app/ServiceCompatApi24;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method
