.class Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShadowSpan"
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private radius:F

.field private shadowColor:I


# direct methods
.method private constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->radius:F

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dx:F

    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dy:F

    iput p4, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->shadowColor:I

    return-void
.end method

.method synthetic constructor <init>(FFFILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;-><init>(FFFI)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->radius:F

    iget v1, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dx:F

    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dy:F

    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->shadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method
