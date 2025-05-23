.class abstract Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-virtual {p0}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_d
    return v0

    :pswitch_e  #0x0
    const/4 v0, 0x1

    goto :goto_d

    :pswitch_10  #0x1
    const/4 v0, 0x0

    goto :goto_d

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_10  #00000001
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_d

    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_1b
.end method

.method public isRtl([CII)Z
    .registers 5

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
