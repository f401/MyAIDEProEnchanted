.class Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public subtitle:Landroid/widget/TextView;

.field final this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;Landroid/view/View;)V
    .registers 5

    .line 156
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const p1, 0x1020014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    .line 158
    const p1, 0x1020015

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 159
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030042

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1030046

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 p2, 0x41700000  # 15.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/high16 p2, 0x41600000  # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
