.class Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitMethod"
.end annotation


# instance fields
.field private index:I

.field private methodContent:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->index:I

    iput-object p2, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->methodContent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$L1000010(Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;)I
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->index:I

    return v0
.end method

.method static synthetic access$L1000011(Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->methodContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000010(Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;I)V
    .registers 2

    iput p1, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->index:I

    return-void
.end method

.method static synthetic access$S1000011(Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/writer/impl/SVGRendererTemplateWriter$SplitMethod;->methodContent:Ljava/lang/String;

    return-void
.end method
