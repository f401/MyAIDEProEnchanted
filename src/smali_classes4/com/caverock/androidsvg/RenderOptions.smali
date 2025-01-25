.class public Lcom/caverock/androidsvg/RenderOptions;
.super Ljava/lang/Object;


# instance fields
.field css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field targetId:Ljava/lang/String;

.field viewBox:Lcom/caverock/androidsvg/SVG$Box;

.field viewId:Ljava/lang/String;

.field viewPort:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/RenderOptions;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-nez p1, :cond_24

    :goto_23
    return-void

    :cond_24
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_23
.end method

.method public static create()Lcom/caverock/androidsvg/RenderOptions;
    .registers 1

    new-instance v0, Lcom/caverock/androidsvg/RenderOptions;

    invoke-direct {v0}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public css(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .registers 4

    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$Source;)V

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    return-object p0
.end method

.method public hasCss()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->ruleCount()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hasPreserveAspectRatio()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasTarget()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasView()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasViewBox()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasViewPort()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public preserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)Lcom/caverock/androidsvg/RenderOptions;
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    return-object p0
.end method

.method public view(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    return-object p0
.end method

.method public viewBox(FFFF)Lcom/caverock/androidsvg/RenderOptions;
    .registers 6

    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object p0
.end method

.method public viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;
    .registers 6

    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object p0
.end method
