.class Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/CursorAdapter;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method
