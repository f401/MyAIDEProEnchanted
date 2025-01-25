.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "MyAIDEAnalysisProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgressDrawableColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

.field final val$color:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;I)V
    .registers 4

    .line 58
    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iput p3, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;->val$color:I

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$2;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
