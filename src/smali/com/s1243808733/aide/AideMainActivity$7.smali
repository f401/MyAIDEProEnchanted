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
    .locals 1

    .line 382
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$7;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Labcd/Nf;

    invoke-direct {v0}, Labcd/Nf;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$7;->instance:Labcd/Nf;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$7;->instance:Labcd/Nf;

    invoke-virtual {v0}, Labcd/Nf;->run()Z

    const/4 v0, 0x0

    return v0
.end method
