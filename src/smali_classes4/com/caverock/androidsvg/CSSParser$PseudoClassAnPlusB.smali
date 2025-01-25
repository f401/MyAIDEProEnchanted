.class Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PseudoClassAnPlusB"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private isFromStart:Z

.field private isOfType:Z

.field private nodeName:Ljava/lang/String;


# direct methods
.method constructor <init>(IIZZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    iput p2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    iput-boolean p3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    iput-boolean p4, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    iput-object p5, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    if-nez v0, :cond_37

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_f
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_7d

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move v4, v3

    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_27
    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz v0, :cond_56

    add-int/lit8 v0, v2, 0x1

    :goto_2d
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    if-nez v1, :cond_59

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    if-eq v0, v1, :cond_36

    move v5, v3

    :cond_36
    :goto_36
    return v5

    :cond_37
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    move-object v1, v0

    goto :goto_f

    :cond_3b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-ne v0, p2, :cond_46

    move v2, v4

    :cond_46
    if-eqz v1, :cond_52

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_52
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_21

    :cond_56
    sub-int v0, v4, v2

    goto :goto_2d

    :cond_59
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_7b

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    if-eqz v1, :cond_36

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    if-eq v0, v1, :cond_36

    :cond_7b
    move v5, v3

    goto :goto_36

    :cond_7d
    move v2, v3

    move v4, v5

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz v0, :cond_30

    const-string v0, ""

    :goto_a
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    if-eqz v1, :cond_33

    const-string v1, "nth-%schild(%dn%+d of type <%s>)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    const-string v0, "last-"

    goto :goto_a

    :cond_33
    const-string v1, "nth-%schild(%dn%+d)"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method
