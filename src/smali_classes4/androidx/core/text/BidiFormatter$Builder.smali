.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    goto :goto_4
.end method

.method private initialize(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    iput-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/text/BidiFormatter;
    .registers 5

    iget v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    sget-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroidx/core/text/BidiFormatter;

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    goto :goto_11
.end method

.method public setTextDirectionHeuristic(Landroidx/core/text/TextDirectionHeuristicCompat;)Landroidx/core/text/BidiFormatter$Builder;
    .registers 2

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    return-object p0
.end method

.method public stereoReset(Z)Landroidx/core/text/BidiFormatter$Builder;
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    :goto_8
    return-object p0

    :cond_9
    iget v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_8
.end method
