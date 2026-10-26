.class Lcom/caverock/androidsvg/SVG$View;
.super Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "View"
.end annotation


# static fields
.field static final NODE_NAME:Ljava/lang/String; = "view"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "view"

    return-object v0
.end method
