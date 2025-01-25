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

.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconAdapter;Landroid/view/View;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const p1, 0x1020006

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/SVGImageView;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    .line 152
    const p1, 0x1020016

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
