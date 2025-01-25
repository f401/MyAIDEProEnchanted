.class Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 8

    const/4 v2, 0x2

    move v0, p2

    move v1, v2

    :goto_3
    add-int v3, p2, p3

    if-ge v0, v3, :cond_18

    if-ne v1, v2, :cond_18

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-static {v1}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    return v1
.end method
