.class Lcom/caverock/androidsvg/SVG$Text;
.super Lcom/caverock/androidsvg/SVG$TextPositionedContainer;

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextRoot;
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Text"
.end annotation


# instance fields
.field transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "text"

    return-object v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    return-void
.end method
