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

.field private final this$0:Lcom/s1243808733/aide/highlight/HighlightAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/highlight/HighlightAdapter;Landroid/view/View;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    .line 76
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->rootView:Landroid/view/View;

    .line 77
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 78
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;)Lcom/s1243808733/aide/highlight/HighlightAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->this$0:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    return-object v0
.end method
