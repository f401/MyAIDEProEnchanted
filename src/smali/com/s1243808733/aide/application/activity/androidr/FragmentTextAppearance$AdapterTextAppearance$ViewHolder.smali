.class Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentTextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;Landroid/view/View;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
