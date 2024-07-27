.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "MyAIDEAnalysisProgressBar.java"


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

.field private final val$color:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;Landroid/graphics/drawable/shapes/Shape;I)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iput p3, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->val$color:I

    invoke-direct {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->block$3585()V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;)Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    return-object v0
.end method

.method private block$3585()V
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000001;->val$color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
