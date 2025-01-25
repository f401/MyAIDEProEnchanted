.class Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XPPAttributesWrapper"
.end annotation


# instance fields
.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private final this$0:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGParser;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->this$0:Lcom/caverock/androidsvg/SVGParser;

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;)Lcom/caverock/androidsvg/SVGParser;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->this$0:Lcom/caverock/androidsvg/SVGParser;

    return-object v0
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getLength()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_38
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
