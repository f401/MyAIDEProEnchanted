.class final Lcom/google/googlejavaformat/Doc$Space;
.super Lcom/google/googlejavaformat/Doc;
.source "Doc.java"

# interfaces
.implements Lcom/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Space"
.end annotation


# static fields
.field private static final SPACE:Lcom/google/googlejavaformat/Doc$Space;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 507
    new-instance v0, Lcom/google/googlejavaformat/Doc$Space;

    invoke-direct {v0}, Lcom/google/googlejavaformat/Doc$Space;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/Doc$Space;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 509
    invoke-direct {p0}, Lcom/google/googlejavaformat/Doc;-><init>()V

    return-void
.end method

.method static make()Lcom/google/googlejavaformat/Doc$Space;
    .registers 1

    .line 517
    sget-object v0, Lcom/google/googlejavaformat/Doc$Space;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 2

    .line 522
    invoke-virtual {p1, p0}, Lcom/google/googlejavaformat/DocBuilder;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 523
    return-void
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 5

    .line 542
    iget v0, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    return-object v0
.end method

.method computeFlat()Ljava/lang/String;
    .registers 2

    .line 532
    const-string v0, " "

    return-object v0
.end method

.method computeRange()Lcom/google/common/collect/Range;
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

    .line 537
    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method computeWidth()F
    .registers 2

    .line 527
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 552
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/googlejavaformat/Output;)V
    .registers 4

    .line 547
    const-string v0, " "

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Space;->range()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    .line 548
    return-void
.end method
