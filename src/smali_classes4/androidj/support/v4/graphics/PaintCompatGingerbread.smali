.class Landroidj/support/v4/graphics/PaintCompatGingerbread;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidj/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 11
    .param p0  # Landroid/graphics/Paint;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v1, :cond_15

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    const-string v0, "\udb3f\udffd"

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v0, v6, v3

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, v1, :cond_4c

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, v5

    cmpl-float v0, v6, v0

    if-gtz v0, :cond_7c

    move v0, v2

    :goto_35
    if-ge v0, v4, :cond_48

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int v8, v0, v7

    invoke-virtual {p0, p1, v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    add-float/2addr v3, v8

    add-int/2addr v0, v7

    goto :goto_35

    :cond_48
    cmpl-float v0, v6, v3

    if-gez v0, :cond_7c

    :cond_4c
    cmpl-float v0, v6, v5

    if-eqz v0, :cond_52

    move v0, v1

    goto :goto_14

    :cond_52
    invoke-static {}, Landroidj/support/v4/graphics/PaintCompatGingerbread;->obtainEmptyRects()Landroidj/support/v4/util/Pair;

    move-result-object v3

    const-string v5, "\udb3f\udffd"

    const-string v0, "\udb3f\udffd"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v0, v3, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v2, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v3, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v3, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v3, v3, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    move v0, v1

    goto :goto_14

    :cond_7a
    move v0, v2

    goto :goto_14

    :cond_7c
    move v0, v2

    goto :goto_14
.end method

.method private static obtainEmptyRects()Landroidj/support/v4/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidj/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-nez v0, :cond_1f

    new-instance v0, Landroidj/support/v4/util/Pair;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidj/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v1, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1e
.end method
