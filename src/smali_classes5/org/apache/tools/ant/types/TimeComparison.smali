.class public Lorg/apache/tools/ant/types/TimeComparison;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "TimeComparison.java"


# static fields
.field public static final AFTER:Lorg/apache/tools/ant/types/TimeComparison;

.field public static final BEFORE:Lorg/apache/tools/ant/types/TimeComparison;

.field public static final EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "before"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "after"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "equal"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->VALUES:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 35
    new-instance v0, Lorg/apache/tools/ant/types/TimeComparison;

    const-string v1, "before"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->BEFORE:Lorg/apache/tools/ant/types/TimeComparison;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/TimeComparison;

    const-string v1, "after"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->AFTER:Lorg/apache/tools/ant/types/TimeComparison;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/TimeComparison;

    const-string v1, "equal"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/TimeComparison;->setValue(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static compare(JJ)I
    .registers 10

    .line 104
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v4

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/types/TimeComparison;->compare(JJJ)I

    move-result v0

    return v0
.end method

.method public static compare(JJJ)I
    .registers 12

    .line 116
    sub-long v0, p0, p2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 118
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_11

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public evaluate(JJ)Z
    .registers 14

    .line 72
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z

    move-result v0

    return v0
.end method

.method public evaluate(JJJ)Z
    .registers 12

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TimeComparison;->getIndex()I

    move-result v2

    .line 84
    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    .line 87
    if-nez v2, :cond_12

    .line 88
    sub-long v2, p1, p5

    cmp-long v2, v2, p3

    if-gez v2, :cond_1a

    .line 93
    :cond_11
    :goto_11
    return v0

    .line 90
    :cond_12
    if-ne v2, v0, :cond_1c

    .line 91
    add-long v2, p1, p5

    cmp-long v2, v2, p3

    if-gtz v2, :cond_11

    :cond_1a
    move v0, v1

    goto :goto_11

    .line 93
    :cond_1c
    sub-long v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-gtz v2, :cond_1a

    goto :goto_11

    .line 85
    :cond_27
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "TimeComparison value not set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 62
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
