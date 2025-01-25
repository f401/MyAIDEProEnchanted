.class Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PseudoClassTarget"
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

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;->targetElement:Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eq p2, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "target"

    return-object v0
.end method
