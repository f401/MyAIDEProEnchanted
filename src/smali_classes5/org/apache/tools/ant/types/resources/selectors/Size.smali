.class public Lorg/apache/tools/ant/types/resources/selectors/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private size:J

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    .line 29
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method


# virtual methods
.method public getSize()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    return-wide v0
.end method

.method public getWhen()Lorg/apache/tools/ant/types/Comparison;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    return-object v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 8

    .line 69
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    sub-long/2addr v0, v2

    .line 70
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_15

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result v0

    return v0

    :cond_15
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_10
.end method

.method public setSize(J)V
    .registers 4

    .line 36
    iput-wide p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    .line 37
    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    .line 53
    return-void
.end method
