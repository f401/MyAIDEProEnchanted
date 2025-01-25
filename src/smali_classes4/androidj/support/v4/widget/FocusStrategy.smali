.class Landroidj/support/v4/widget/FocusStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;,
        Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;,
        Landroidj/support/v4/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    invoke-static {p0, p1, p3}, Landroidj/support/v4/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p1, p3}, Landroidj/support/v4/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x11

    if-eq p0, v1, :cond_26

    const/16 v1, 0x42

    if-eq p0, v1, :cond_26

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {p0, p1, p3}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    if-ge v1, v2, :cond_d

    :cond_26
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_d
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1a

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19

    :sswitch_1c
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_28

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_19

    :cond_28
    move v0, v1

    goto :goto_19

    :sswitch_data_2a
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_d
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .registers 13
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sparse-switch p5, :sswitch_data_60

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_1a
    const/4 v1, 0x0

    invoke-interface {p1, p0}, Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move v2, v0

    :goto_25
    if-ge v2, v4, :cond_5f

    invoke-interface {p1, p0, v2}, Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_52

    :cond_2d
    move-object v0, v1

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_25

    :sswitch_32
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1a

    :sswitch_3d
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1a

    :sswitch_47
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1a

    :cond_52
    invoke-interface {p2, v0, v5}, Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p5, p4, v5, v3}, Landroidj/support/v4/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2e

    :cond_5f
    return-object v1

    :sswitch_data_60
    .sparse-switch
        0x11 -> :sswitch_11
        0x21 -> :sswitch_3d
        0x42 -> :sswitch_32
        0x82 -> :sswitch_47
    .end sparse-switch
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .registers 11
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;IZZ)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_16

    invoke-interface {p1, p0, v0}, Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    new-instance v0, Landroidj/support/v4/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v0, p5, p2}, Landroidj/support/v4/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidj/support/v4/widget/FocusStrategy$BoundsAdapter;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    packed-switch p4, :pswitch_data_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29  #0x2
    invoke-static {p3, v2, p6}, Landroidj/support/v4/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    return-object v0

    :pswitch_2e  #0x1
    invoke-static {p3, v2, p6}, Landroidj/support/v4/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2d

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_29  #00000002
    .end packed-switch
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez p0, :cond_10

    const/4 v0, -0x1

    :goto_7
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_7

    :cond_15
    if-eqz p2, :cond_1f

    if-lez v1, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez p0, :cond_10

    move v0, v1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_7

    :cond_15
    if-eqz p2, :cond_20

    if-lez v1, :cond_20

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getWeightedDistanceFor(II)I
    .registers 4

    mul-int/lit8 v0, p0, 0xd

    mul-int/2addr v0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p2, p0}, Landroidj/support/v4/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p1, p3, p0}, Landroidj/support/v4/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {p0, p1, p3, p2}, Landroidj/support/v4/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {v1, v2}, Landroidj/support/v4/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v1

    invoke-static {p0, p1, p3}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p3}, Landroidj/support/v4/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {v2, v3}, Landroidj/support/v4/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v2

    if-ge v1, v2, :cond_7

    :cond_34
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7
    .param p0  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_5e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_d
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_19

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_20

    :cond_19
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f

    :sswitch_22
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2e

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_34

    :cond_2e
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1f

    :cond_34
    move v0, v1

    goto :goto_1f

    :sswitch_36
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_42

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_48

    :cond_42
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1f

    :cond_48
    move v0, v1

    goto :goto_1f

    :sswitch_4a
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_56

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_5c

    :cond_56
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1f

    :cond_5c
    move v0, v1

    goto :goto_1f

    :sswitch_data_5e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_36
        0x42 -> :sswitch_22
        0x82 -> :sswitch_4a
    .end sparse-switch
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_13

    :cond_12
    const/4 v0, 0x1

    :cond_13
    :goto_13
    return v0

    :sswitch_14
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_12

    goto :goto_13

    :sswitch_1b
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_12

    goto :goto_13

    :sswitch_22
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_12

    goto :goto_13

    nop

    :sswitch_data_2a
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_1b
        0x42 -> :sswitch_14
        0x82 -> :sswitch_22
    .end sparse-switch
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :goto_10
    return v0

    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroidj/support/v4/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_10
    return v0

    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_10

    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_22

    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_23
        0x42 -> :sswitch_b
        0x82 -> :sswitch_23
    .end sparse-switch
.end method
