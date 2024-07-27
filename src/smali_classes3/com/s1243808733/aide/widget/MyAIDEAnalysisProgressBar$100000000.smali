.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "MyAIDEAnalysisProgressBar.java"


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    invoke-direct {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;->block$3286()V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;)Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    return-object v0
.end method

.method private block$3286()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000000;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
