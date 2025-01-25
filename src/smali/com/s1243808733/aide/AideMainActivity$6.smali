.class Lcom/s1243808733/aide/AideMainActivity$6;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field instance:Labcd/tg;

.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$6;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance p1, Labcd/tg;

    invoke-direct {p1}, Labcd/tg;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$6;->instance:Labcd/tg;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    .line 372
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$6;->instance:Labcd/tg;

    invoke-virtual {p1}, Labcd/tg;->run()Z

    const/4 p1, 0x0

    return p1
.end method
