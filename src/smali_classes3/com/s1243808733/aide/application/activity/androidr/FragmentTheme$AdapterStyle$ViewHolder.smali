.class Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;Landroid/view/View;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;

    .line 86
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;

    return-object v0
.end method
