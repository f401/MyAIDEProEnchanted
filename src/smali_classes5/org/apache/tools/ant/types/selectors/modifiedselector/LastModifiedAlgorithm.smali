.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/LastModifiedAlgorithm;
.super Ljava/lang/Object;
.source "LastModifiedAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 47
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_b
    return-object v0

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method
