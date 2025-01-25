.class abstract Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TextProcessor"
.end annotation


# instance fields
.field private final this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    return-object v0
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public abstract processText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
