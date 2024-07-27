.class enum Lcom/caverock/androidsvg/SVGParser$SVGElem;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "SVGElem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVGParser$SVGElem;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final a:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVGParser$SVGElem;",
            ">;"
        }
    .end annotation
.end field

.field public static final circle:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final ellipse:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final line:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final path:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final polygon:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final polyline:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final rect:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final tref:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final view:Lcom/caverock/androidsvg/SVGParser$SVGElem;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "svg"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "a"

    invoke-direct {v1, v2, v4}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->a:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "circle"

    invoke-direct {v1, v2, v5}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->circle:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "clipPath"

    invoke-direct {v1, v2, v6}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "defs"

    invoke-direct {v1, v2, v7}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "desc"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "ellipse"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ellipse:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "g"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "image"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "line"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->line:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "linearGradient"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "marker"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "mask"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "path"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->path:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "pattern"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "polygon"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polygon:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "polyline"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polyline:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "radialGradient"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "rect"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->rect:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "solidColor"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "stop"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "style"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "SWITCH"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "symbol"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "text"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "textPath"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "title"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "tref"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tref:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "tspan"

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "use"

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "view"

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->view:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "UNSUPPORTED"

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser$SVGElem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const/16 v1, 0x20

    new-array v1, v1, [Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v2, v1, v0

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->a:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v2, v1, v4

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->circle:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v2, v1, v5

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v2, v1, v6

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ellipse:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->line:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->path:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polygon:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polyline:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->rect:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tref:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->view:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    aput-object v3, v1, v2

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->$VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v1, v0

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v2, v3, :cond_2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    const-string v4, "switch"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;
    .registers 2

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;
    .registers 5

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->$VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->$VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVGParser$SVGElem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVGParser$SVGElem;

    return-object v0
.end method
