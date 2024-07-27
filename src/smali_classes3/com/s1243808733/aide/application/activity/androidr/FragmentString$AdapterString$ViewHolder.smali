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

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;Landroid/view/View;)V
    .registers 6

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    .line 157
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    .line 158
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    const/16 v1, 0xf

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/16 v1, 0xe

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    return-object v0
.end method
