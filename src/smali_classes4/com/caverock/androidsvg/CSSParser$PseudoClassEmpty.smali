.class Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PseudoClassEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    instance-of v1, p2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_12

    check-cast p2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    :cond_12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "empty"

    return-object v0
.end method
