.class Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentTextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;
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
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const p1, 0x1020014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
