.class Lcom/caverock/androidsvg/SVGParser$ColourKeywords;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColourKeywords"
.end annotation


# static fields
.field private static final colourKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 9

    const v8, -0x887767

    const v7, -0x8f7f70

    const v6, -0x969697

    const v5, -0xd0b0b1

    const v4, -0xff0001

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "aliceblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xf0701

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "antiquewhite"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x51429

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "aqua"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "aquamarine"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x80002c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "azure"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xf0001

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "beige"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xa0a24

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "bisque"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x1b3c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "black"

    new-instance v2, Ljava/lang/Integer;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "blanchedalmond"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x1433

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "blue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xffff01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "blueviolet"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x75d41e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "brown"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x5ad5d6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "burlywood"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x214779

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "cadetblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xa06160

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "chartreuse"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x800100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "chocolate"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x2d96e2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "coral"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x80b0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "cornflowerblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x9b6a13

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "cornsilk"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x724

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "crimson"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x23ebc4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "cyan"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xffff75

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkcyan"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff7475

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkgoldenrod"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x4779f5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkgray"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x565657

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff9c00

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkgrey"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x565657

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkkhaki"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x424895

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkmagenta"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x74ff75

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkolivegreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xaa94d1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkorange"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x7400

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkorchid"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x66cd34

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkred"

    new-instance v2, Ljava/lang/Integer;

    const/high16 v3, -0x750000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darksalmon"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x166986

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkseagreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x704371

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkslateblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xb7c275

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkslategray"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkslategrey"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkturquoise"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff312f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "darkviolet"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x6bff2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "deeppink"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xeb6d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "deepskyblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff4001

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "dimgray"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "dimgrey"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "dodgerblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xe16f01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "firebrick"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x4dddde

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "floralwhite"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x510

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "forestgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xdd74de

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "fuchsia"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "gainsboro"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x232324

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "ghostwhite"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x70701

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "gold"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x2900

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "goldenrod"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x255ae0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "gray"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x7f7f80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "green"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff8000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "greenyellow"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x5200d1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "grey"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x7f7f80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "honeydew"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xf0010

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "hotpink"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x964c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "indianred"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x32a3a4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "indigo"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xb4ff7e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "ivory"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "khaki"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xf1974

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lavender"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x191906

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lavenderblush"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0xf0b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lawngreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x830400

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lemonchiffon"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x533

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x52271a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightcoral"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xf7f80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightcyan"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x1f0001

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightgoldenrodyellow"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x5052e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightgray"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x2c2c2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x6f1170

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightgrey"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x2c2c2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightpink"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x493f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightsalmon"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x5f86

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightseagreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xdf4d56

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightskyblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x783106

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightslategray"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightslategrey"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightsteelblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x4f3b22

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lightyellow"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "lime"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff0100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "limegreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xcd32ce

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "linen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x50f1a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "magenta"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "maroon"

    new-instance v2, Ljava/lang/Integer;

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumaquamarine"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x993256

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xffff33

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumorchid"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x45aa2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumpurple"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x6c8f25

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumseagreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xc34c8f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumslateblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x849712

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumspringgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff0566

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumturquoise"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xb72e34

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mediumvioletred"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x38ea7b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "midnightblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xe6e690

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mintcream"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xa0006

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "mistyrose"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x1b1f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "moccasin"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x1b4b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "navajowhite"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x2153

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "navy"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xffff80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "oldlace"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x20a1a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "olive"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x7f8000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "olivedrab"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x9471dd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "orange"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x5b00

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "orangered"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xbb00

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "orchid"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x258f2a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "palegoldenrod"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x111756

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "palegreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x670468

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "paleturquoise"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x501112

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "palevioletred"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x248f6d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "papayawhip"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x102b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "peachpuff"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x2547

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "peru"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x327ac1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "pink"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x3f35

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "plum"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x225f23

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "powderblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x4f1f1a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "purple"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x7fff80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "rebeccapurple"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x99cc67

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "red"

    new-instance v2, Ljava/lang/Integer;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "rosybrown"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x437071

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "royalblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xbe961f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "saddlebrown"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x74baed

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "salmon"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x57f8e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "sandybrown"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xb5ba0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "seagreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xd174a9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "seashell"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0xa12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "sienna"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x5fadd3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "silver"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x3f3f40

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "skyblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x783115

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "slateblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x95a533

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "slategray"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "slategrey"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "snow"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x506

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "springgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff0081

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "steelblue"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xb97d4c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "tan"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x2d4b74

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "teal"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xff7f80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "thistle"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x274028

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "tomato"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x9cb9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "turquoise"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xbf1f30

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "violet"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x117d12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "wheat"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xa214d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "white"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "whitesmoke"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xa0a0b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "yellow"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "yellowgreen"

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x6532ce

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    const-string v1, "transparent"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
