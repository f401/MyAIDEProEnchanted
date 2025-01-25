.class public interface Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;
.super Ljava/lang/Object;


# static fields
.field public static final CLIP_PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;

.field public static final GROUP_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;

.field public static final GROUP_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;

.field public static final PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;

.field public static final VECTOR_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;

.field public static final VECTOR_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->VECTOR_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->GROUP_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->CLIP_PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->VECTOR_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->GROUP_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;

    return-void
.end method
