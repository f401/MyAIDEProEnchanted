.class Lcom/caverock/androidsvg/SVG$TRef;
.super Lcom/caverock/androidsvg/SVG$TextContainer;

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TRef"
.end annotation


# instance fields
.field href:Ljava/lang/String;

.field private textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$TextContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "tref"

    return-object v0
.end method

.method public getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-object v0
.end method

.method public setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextRoot;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void
.end method
