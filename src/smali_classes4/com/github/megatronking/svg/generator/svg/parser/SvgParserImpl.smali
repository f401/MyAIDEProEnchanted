.class public interface Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;
.super Ljava/lang/Object;


# static fields
.field public static final CIRCLE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;

.field public static final DEFS_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;

.field public static final ELLIPSE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;

.field public static final G_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/GAttributeParser;

.field public static final G_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;

.field public static final LINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;

.field public static final PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;

.field public static final POLYGON_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;

.field public static final POLYLINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;

.field public static final RECT_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;

.field public static final SVG_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;

.field public static final SVG_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;

.field public static final SYMBOL_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;

.field public static final USE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->SVG_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/GAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/GAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->G_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/GAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->CIRCLE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->ELLIPSE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->LINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->POLYLINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->POLYGON_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->RECT_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->USE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->SVG_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->G_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->DEFS_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->SYMBOL_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;

    return-void
.end method
