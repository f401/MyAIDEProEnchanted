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
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;Landroid/view/View;)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

    .line 88
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance$AdapterTextAppearance;

    return-object v0
.end method
