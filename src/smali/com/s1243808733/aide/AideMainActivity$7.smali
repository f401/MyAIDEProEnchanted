.class Lcom/s1243808733/aide/AideMainActivity$7;
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
.field instance:Labcd/Nf;

.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$7;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance p1, Labcd/Nf;

    invoke-direct {p1}, Labcd/Nf;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$7;->instance:Labcd/Nf;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    .line 387
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$7;->instance:Labcd/Nf;

    invoke-virtual {p1}, Labcd/Nf;->run()Z

    const/4 p1, 0x0

    return p1
.end method
