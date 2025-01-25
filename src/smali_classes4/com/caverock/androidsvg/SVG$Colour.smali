.class Lcom/caverock/androidsvg/SVG$Colour;
.super Lcom/caverock/androidsvg/SVG$SvgPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Colour"
.end annotation


# static fields
.field static final BLACK:Lcom/caverock/androidsvg/SVG$Colour;

.field static final TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;


# instance fields
.field colour:I


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgPaint;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "#%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
