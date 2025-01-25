.class Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

.field public static final INSTANCE_RTL:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_LTR:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, p2

    move v0, v2

    :goto_4
    add-int v4, p2, p3

    if-ge v3, v4, :cond_28

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    invoke-static {v4}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->isRtlText(I)I

    move-result v4

    packed-switch v4, :pswitch_data_32

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_1a  #0x0
    iget-boolean v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v0, :cond_20

    move v1, v2

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_17

    :pswitch_22  #0x1
    iget-boolean v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_17

    :cond_28
    if-eqz v0, :cond_30

    iget-boolean v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-nez v0, :cond_1f

    move v1, v2

    goto :goto_1f

    :cond_30
    const/4 v1, 0x2

    goto :goto_1f

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method
