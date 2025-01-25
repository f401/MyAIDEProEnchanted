.class public Landroid/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$g;,
        Landroid/support/v4/app/NotificationCompat$h;,
        Landroid/support/v4/app/NotificationCompat$i;,
        Landroid/support/v4/app/NotificationCompat$j$a;
    }
.end annotation


# static fields
.field static final j6:Landroid/support/v4/app/NotificationCompat$k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/NotificationCompat$i;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$i;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/app/NotificationCompat;->j6:Landroid/support/v4/app/NotificationCompat$k;

    goto :goto_46

    :cond_e
    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v4/app/NotificationCompat$h;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$h;-><init>()V

    goto :goto_b

    :cond_18
    const/16 v1, 0x15

    if-lt v0, v1, :cond_22

    new-instance v0, Landroid/support/v4/app/NotificationCompat$g;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$g;-><init>()V

    goto :goto_b

    :cond_22
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2c

    new-instance v0, Landroid/support/v4/app/NotificationCompat$f;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$f;-><init>()V

    goto :goto_b

    :cond_2c
    const/16 v1, 0x13

    if-lt v0, v1, :cond_36

    new-instance v0, Landroid/support/v4/app/NotificationCompat$e;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$e;-><init>()V

    goto :goto_b

    :cond_36
    const/16 v1, 0x10

    if-lt v0, v1, :cond_40

    new-instance v0, Landroid/support/v4/app/NotificationCompat$d;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$d;-><init>()V

    goto :goto_b

    :cond_40
    new-instance v0, Landroid/support/v4/app/NotificationCompat$j;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$j;-><init>()V

    goto :goto_b

    :goto_46
    return-void
.end method

.method public static j6(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    invoke-static {p0}, Landroid/support/v4/app/da;->j6(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method static j6(Landroid/support/v4/app/V;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/V;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$a;

    invoke-interface {p0, v0}, Landroid/support/v4/app/V;->j6(Landroid/support/v4/app/ca;)V

    goto :goto_4

    :cond_14
    return-void
.end method
