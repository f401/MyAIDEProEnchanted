.class public final Landroidj/support/v4/text/BidiFormatter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroidj/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/text/BidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidj/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidj/support/v4/text/BidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidj/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroidj/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroidj/support/v4/text/BidiFormatter;
    .registers 2

    if-eqz p0, :cond_0

    invoke-static {}, Landroidj/support/v4/text/BidiFormatter;->access$200()Landroidj/support/v4/text/BidiFormatter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroidj/support/v4/text/BidiFormatter;->access$300()Landroidj/support/v4/text/BidiFormatter;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {}, Landroidj/support/v4/text/BidiFormatter;->access$100()Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v0, 0x2

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Landroidj/support/v4/text/BidiFormatter;
    .registers 6

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    invoke-static {}, Landroidj/support/v4/text/BidiFormatter;->access$100()Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Landroidj/support/v4/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroidj/support/v4/text/BidiFormatter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidj/support/v4/text/BidiFormatter;

    iget-boolean v1, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidj/support/v4/text/BidiFormatter;-><init>(ZILandroidj/support/v4/text/TextDirectionHeuristicCompat;Landroidj/support/v4/text/BidiFormatter$1;)V

    goto :goto_0
.end method

.method public setTextDirectionHeuristic(Landroidj/support/v4/text/TextDirectionHeuristicCompat;)Landroidj/support/v4/text/BidiFormatter$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    return-object p0
.end method

.method public stereoReset(Z)Landroidj/support/v4/text/BidiFormatter$Builder;
    .registers 3

    if-eqz p1, :cond_0

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0
.end method
