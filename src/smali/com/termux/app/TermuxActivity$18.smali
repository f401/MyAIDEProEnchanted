.class Lcom/termux/app/TermuxActivity$18;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$18;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1158
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$18;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://play.google.com/store/apps/details?id=com.termux.styling"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
