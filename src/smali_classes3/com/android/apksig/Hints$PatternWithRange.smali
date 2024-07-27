.class public final Lcom/android/apksig/Hints$PatternWithRange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/Hints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternWithRange"
.end annotation


# instance fields
.field final offset:J

.field final pattern:Ljava/util/regex/Pattern;

.field final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/Hints$PatternWithRange;->pattern:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/apksig/Hints$PatternWithRange;->offset:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/apksig/Hints$PatternWithRange;->size:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/Hints$PatternWithRange;->pattern:Ljava/util/regex/Pattern;

    iput-wide p2, p0, Lcom/android/apksig/Hints$PatternWithRange;->offset:J

    iput-wide p4, p0, Lcom/android/apksig/Hints$PatternWithRange;->size:J

    return-void
.end method


# virtual methods
.method public ClampToAbsoluteByteRange(Lcom/android/apksig/Hints$ByteRange;)Lcom/android/apksig/Hints$ByteRange;
    .registers 10

    iget-wide v0, p1, Lcom/android/apksig/Hints$ByteRange;->end:J

    iget-wide v2, p1, Lcom/android/apksig/Hints$ByteRange;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/apksig/Hints$PatternWithRange;->offset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/android/apksig/Hints$ByteRange;->start:J

    iget-wide v2, p0, Lcom/android/apksig/Hints$PatternWithRange;->offset:J

    add-long/2addr v2, v0

    new-instance v0, Lcom/android/apksig/Hints$ByteRange;

    iget-wide v4, p1, Lcom/android/apksig/Hints$ByteRange;->end:J

    sub-long/2addr v4, v2

    iget-wide v6, p0, Lcom/android/apksig/Hints$PatternWithRange;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    goto :goto_0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/Hints$PatternWithRange;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method
