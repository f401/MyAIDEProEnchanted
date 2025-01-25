.class Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/FocusStrategy$BoundsAdapter;,
        Landroidx/customview/widget/FocusStrategy$CollectionAdapter;,
        Landroidx/customview/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    if-eq p0, v2, :cond_f

    const/16 v2, 0x42

    if-eq p0, v2, :cond_f

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-lt v2, v3, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq p0, v2, :cond_29

    const/16 v2, 0x21

    if-eq p0, v2, :cond_12

    const/16 v2, 0x42

    if-eq p0, v2, :cond_29

    const/16 v2, 0x82

    if-ne p0, v2, :cond_1f

    :cond_12
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_27

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_27

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move v0, v1

    goto :goto_1e

    :cond_29
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_35

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1e

    :cond_35
    move v0, v1

    goto :goto_1e
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v0, 0x11

    if-eq p5, v0, :cond_54

    const/16 v0, 0x21

    if-eq p5, v0, :cond_4a

    const/16 v0, 0x42

    if-eq p5, v0, :cond_3f

    const/16 v0, 0x82

    if-ne p5, v0, :cond_37

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_20
    const/4 v0, 0x0

    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move v2, v1

    :goto_2b
    if-ge v2, v4, :cond_6c

    invoke-interface {p1, p0, v2}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_5e

    :cond_33
    :goto_33
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_20

    :cond_4a
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_20

    :cond_54
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_20

    :cond_5e
    invoke-interface {p2, v1, v5}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p5, p4, v5, v3}, Landroidx/customview/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_33

    :cond_6c
    return-object v0
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;IZZ)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_16

    invoke-interface {p1, p0, v0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    new-instance v0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v0, p5, p2}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    if-eq p4, v0, :cond_31

    const/4 v0, 0x2

    if-ne p4, v0, :cond_29

    invoke-static {p3, v2, p6}, Landroidx/customview/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-static {p3, v2, p6}, Landroidx/customview/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_28
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
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p1, p3, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0, p1, p2, p3}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0, p1, p3, p2}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    goto :goto_9

    :cond_1e
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq p2, v2, :cond_57

    const/16 v2, 0x21

    if-eq p2, v2, :cond_43

    const/16 v2, 0x42

    if-eq p2, v2, :cond_2f

    const/16 v2, 0x82

    if-ne p2, v2, :cond_27

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1e

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_25

    :cond_1e
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_25

    :cond_24
    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3b

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_41

    :cond_3b
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_24

    :cond_41
    move v0, v1

    goto :goto_24

    :cond_43
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_4f

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_55

    :cond_4f
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_24

    :cond_55
    move v0, v1

    goto :goto_24

    :cond_57
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_63

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_69

    :cond_63
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_24

    :cond_69
    move v0, v1

    goto :goto_24
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq p0, v2, :cond_33

    const/16 v2, 0x21

    if-eq p0, v2, :cond_2b

    const/16 v2, 0x42

    if-eq p0, v2, :cond_23

    const/16 v2, 0x82

    if-ne p0, v2, :cond_1b

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_18

    move v0, v1

    goto :goto_18

    :cond_2b
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_18

    move v0, v1

    goto :goto_18

    :cond_33
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_18

    move v0, v1

    goto :goto_18
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    const/16 v0, 0x11

    if-eq p0, v0, :cond_29

    const/16 v0, 0x21

    if-eq p0, v0, :cond_24

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x82

    if-ne p0, v0, :cond_17

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_14
    sub-int v0, v1, v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14

    :cond_24
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    :cond_29
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_14
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    const/16 v0, 0x11

    if-eq p0, v0, :cond_29

    const/16 v0, 0x21

    if-eq p0, v0, :cond_24

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x82

    if-ne p0, v0, :cond_17

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_14
    sub-int v0, v1, v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14

    :cond_24
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_29
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_14
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6

    const/16 v0, 0x11

    if-eq p0, v0, :cond_30

    const/16 v0, 0x21

    if-eq p0, v0, :cond_10

    const/16 v0, 0x42

    if-eq p0, v0, :cond_30

    const/16 v0, 0x82

    if-ne p0, v0, :cond_28

    :cond_10
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

    :goto_27
    return v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
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

    goto :goto_27
.end method
