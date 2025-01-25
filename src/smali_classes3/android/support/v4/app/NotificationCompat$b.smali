.class public Landroid/support/v4/app/NotificationCompat$b;
.super Landroid/support/v4/app/NotificationCompat$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private v5:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$l;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$b;
    .registers 2

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$b;->v5:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public j6(Landroid/support/v4/app/W;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$l;->DW:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$l;->Hw:Z

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$l;->FH:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$b;->v5:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/app/da;->j6(Landroid/support/v4/app/W;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method
