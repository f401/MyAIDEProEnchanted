.class Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;
.super Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;
.source "LayoutPreservingProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private added:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->parsePair(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private findFirstSeparator(Ljava/lang/String;)I
    .registers 5

    .line 755
    const-string v0, "\\\\\\\\"

    const-string v1, "__"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    const-string v1, "\\\\="

    const-string v2, "__"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    const-string v1, "\\\\:"

    const-string v2, "__"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    const-string v1, "\\\\ "

    const-string v2, "__"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string v1, "\\\\t"

    const-string v2, "__"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    const-string v1, " :=\t"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v3, -0x1

    .line 769
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v3

    .line 783
    :cond_1
    :goto_0
    return v0

    .line 773
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 774
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 775
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 776
    if-eq v2, v3, :cond_3

    if-ge v2, v0, :cond_3

    move v0, v2

    .line 774
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 780
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 781
    goto :goto_0
.end method

.method private parsePair(Ljava/lang/String;)V
    .registers 4

    .line 721
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->findFirstSeparator(Ljava/lang/String;)I

    move-result v0

    .line 722
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 724
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    .line 731
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    const-string v1, " \t\u000c"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    .line 732
    return-void

    .line 727
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    .line 728
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 735
    if-nez p1, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 748
    :goto_0
    return-object v0

    .line 739
    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 745
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 746
    const-string v0, ""

    goto :goto_0

    .line 740
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 748
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 709
    const/4 v0, 0x0

    .line 711
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    .line 712
    :catch_0
    move-exception v1

    .line 714
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 686
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 691
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .registers 2

    .line 700
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->added:Z

    return v0
.end method

.method public setNew(Z)V
    .registers 2

    .line 704
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->added:Z

    .line 705
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 695
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->value:Ljava/lang/String;

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setText(Ljava/lang/String;)V

    .line 697
    return-void
.end method
