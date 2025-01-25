.class Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
.super Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicLocale"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    invoke-direct {v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;-><init>()V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
