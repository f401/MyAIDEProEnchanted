.class Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrategyParser"
.end annotation


# instance fields
.field private currentIdx:I

.field private final definingCalendar:Ljava/util/Calendar;

.field final this$0:Lorg/apache/commons/lang3/time/FastDateParser;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;)V
    .registers 3

    .line 209
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    .line 211
    return-void
.end method

.method private letterPattern(C)Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 6

    .line 226
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 227
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 228
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_2

    .line 233
    :cond_22
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    sub-int v0, v1, v0

    .line 234
    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    invoke-static {v2, p1, v0, v3}, Lorg/apache/commons/lang3/time/FastDateParser;->access$200(Lorg/apache/commons/lang3/time/FastDateParser;CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    return-object v1
.end method

.method private literal()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 9

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 238
    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 241
    :goto_9
    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v4, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v4}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 242
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 243
    if-nez v0, :cond_40

    invoke-static {v4}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(C)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 253
    :cond_2b
    if-nez v0, :cond_73

    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    new-instance v2, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    return-object v1

    .line 245
    :cond_40
    const/4 v2, 0x1

    if-ne v4, v7, :cond_69

    iget v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v6}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_63

    iget-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v5}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_69

    .line 246
    :cond_63
    if-nez v0, :cond_67

    move v0, v2

    goto :goto_9

    :cond_67
    move v0, v1

    goto :goto_9

    .line 249
    :cond_69
    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 254
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unterminated quote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getNextStrategy()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 3

    .line 214
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 215
    const/4 v0, 0x0

    .line 222
    :goto_f
    return-object v0

    .line 218
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 219
    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(C)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 220
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->letterPattern(C)Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    move-result-object v0

    goto :goto_f

    .line 222
    :cond_27
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->literal()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    move-result-object v0

    goto :goto_f
.end method
