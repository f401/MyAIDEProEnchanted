.class Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field static final INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v0, v2

    move v3, p2

    :goto_4
    add-int v4, p3, p2

    if-ge v3, v4, :cond_28

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    invoke-static {v4}, Landroidx/core/text/TextDirectionHeuristicsCompat;->isRtlText(I)I

    move-result v4

    if-eqz v4, :cond_20

    if-eq v4, v1, :cond_1b

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1b
    iget-boolean v0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-nez v0, :cond_26

    :goto_1f
    return v1

    :cond_20
    iget-boolean v0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v0, :cond_26

    move v1, v2

    goto :goto_1f

    :cond_26
    move v0, v1

    goto :goto_18

    :cond_28
    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    goto :goto_1f

    :cond_2d
    const/4 v1, 0x2

    goto :goto_1f
.end method
