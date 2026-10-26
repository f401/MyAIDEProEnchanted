.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$1;
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


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$1;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 55
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$1;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
