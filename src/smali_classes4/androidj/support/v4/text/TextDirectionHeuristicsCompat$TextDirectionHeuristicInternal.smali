.class Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .registers 3

    invoke-direct {p0, p1}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    iput-boolean p2, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
