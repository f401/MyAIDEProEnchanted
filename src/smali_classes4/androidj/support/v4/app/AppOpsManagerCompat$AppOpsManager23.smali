.class Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManager23;
.super Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppOpsManager23"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/app/AppOpsManagerCompat23;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/app/AppOpsManagerCompat23;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/AppOpsManagerCompat23;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
