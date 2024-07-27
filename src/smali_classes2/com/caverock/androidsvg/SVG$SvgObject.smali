.class Lcom/caverock/androidsvg/SVG$SvgObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SvgObject"
.end annotation


# instance fields
.field document:Lcom/caverock/androidsvg/SVG;

.field parent:Lcom/caverock/androidsvg/SVG$SvgContainer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
