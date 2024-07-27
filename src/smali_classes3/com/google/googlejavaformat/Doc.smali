.class public abstract Lcom/google/googlejavaformat/Doc;
.super Ljava/lang/Object;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/Doc$Break;,
        Lcom/google/googlejavaformat/Doc$FillMode;,
        Lcom/google/googlejavaformat/Doc$Level;,
        Lcom/google/googlejavaformat/Doc$Space;,
        Lcom/google/googlejavaformat/Doc$State;,
        Lcom/google/googlejavaformat/Doc$Tok;,
        Lcom/google/googlejavaformat/Doc$Token;,
        Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
    }
.end annotation


# static fields
.field private static final EMPTY_RANGE:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGERS:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flat:Ljava/lang/String;

.field private flatComputed:Z

.field private range:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rangeComputed:Z

.field private width:F

.field private widthComputed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    .line 100
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/Doc;->INTEGERS:Lcom/google/common/collect/DiscreteDomain;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/google/googlejavaformat/Doc;->widthComputed:Z

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlejavaformat/Doc;->width:F

    .line 107
    iput-boolean v1, p0, Lcom/google/googlejavaformat/Doc;->flatComputed:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/google/googlejavaformat/Doc;->rangeComputed:Z

    .line 112
    sget-object v0, Lcom/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/Range;

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/Range;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/common/collect/DiscreteDomain;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/googlejavaformat/Doc;->INTEGERS:Lcom/google/common/collect/DiscreteDomain;

    return-object v0
.end method


# virtual methods
.method public abstract computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
.end method

.method abstract computeFlat()Ljava/lang/String;
.end method

.method abstract computeRange()Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract computeWidth()F
.end method

.method final getFlat()Ljava/lang/String;
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->flatComputed:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc;->computeFlat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->flatComputed:Z

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    return-object v0
.end method

.method final getWidth()F
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->widthComputed:Z

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc;->computeWidth()F

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/Doc;->width:F

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->widthComputed:Z

    .line 124
    :cond_0
    iget v0, p0, Lcom/google/googlejavaformat/Doc;->width:F

    return v0
.end method

.method final range()Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->rangeComputed:Z

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc;->computeRange()Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/Range;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/Doc;->rangeComputed:Z

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public abstract write(Lcom/google/googlejavaformat/Output;)V
.end method
