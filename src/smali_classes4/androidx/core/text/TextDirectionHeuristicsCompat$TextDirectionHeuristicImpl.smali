.class abstract Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method constructor <init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    invoke-interface {v1, p1, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eqz v1, :cond_f

    if-eq v1, v0, :cond_10

    invoke-virtual {p0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    iget-object v0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_15

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public isRtl([CII)Z
    .registers 5

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
