.class Lcom/termux/app/TermuxActivity$9;
.super Landroid/widget/ArrayAdapter;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/termux/terminal/TerminalSession;",
        ">;"
    }
.end annotation


# instance fields
.field final boldSpan:Landroid/text/style/StyleSpan;

.field final italicSpan:Landroid/text/style/StyleSpan;

.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    .line 686
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$9;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 687
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$9;->boldSpan:Landroid/text/style/StyleSpan;

    .line 688
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$9;->italicSpan:Landroid/text/style/StyleSpan;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v0, 0x0

    if-nez p2, :cond_13

    .line 695
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$9;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 696
    const-string v1, "line_in_drawer"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 698
    :cond_13
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity$9;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/termux/terminal/TerminalSession;

    .line 699
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    .line 701
    const-string v2, "row_line"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 703
    iget-object v3, p3, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 704
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 707
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_4d

    move-object v3, v6

    .line 708
    :cond_4d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_6c

    :cond_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_62

    :cond_60
    const-string v6, "\n"

    :goto_62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 710
    :goto_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 711
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v6, p0, Lcom/termux/app/TermuxActivity$9;->boldSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 713
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$9;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v0, p1, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 715
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_b4

    .line 718
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x11

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_bd

    .line 720
    :cond_b4
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_bd
    if-nez v1, :cond_c9

    .line 722
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result p1

    if-nez p1, :cond_c6

    goto :goto_c9

    :cond_c6
    const/high16 p1, -0x10000

    goto :goto_cb

    :cond_c9
    :goto_c9
    const/high16 p1, -0x1000000

    .line 723
    :goto_cb
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
