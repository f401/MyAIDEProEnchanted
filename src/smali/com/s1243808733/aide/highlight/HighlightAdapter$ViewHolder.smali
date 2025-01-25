.class Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HighlightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/highlight/HighlightAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public rootView:Landroid/view/View;

.field public subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

.field final this$0:Lcom/s1243808733/aide/highlight/HighlightAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/highlight/HighlightAdapter;Landroid/view/View;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->rootView:Landroid/view/View;

    .line 77
    const p1, 0x1020014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 78
    const p1, 0x1020015

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    return-void
.end method
