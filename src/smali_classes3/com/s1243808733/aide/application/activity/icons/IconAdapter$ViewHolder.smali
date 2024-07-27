.class public Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/icons/IconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Lcom/caverock/androidsvg/SVGImageView;

.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconAdapter;Landroid/view/View;)V
    .registers 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    .line 151
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGImageView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    .line 152
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    return-object v0
.end method
