.class public Lorg/json2/JSONTokener;
.super Ljava/lang/Object;


# instance fields
.field private character:J

.field private characterPreviousLine:J

.field private eof:Z

.field private index:J

.field private line:J

.field private previous:C

.field private final reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json2/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 8

    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_e
    iput-object p1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    iput-boolean v1, p0, Lorg/json2/JSONTokener;->eof:Z

    iput-boolean v1, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    iput-char v1, p0, Lorg/json2/JSONTokener;->previous:C

    iput-wide v2, p0, Lorg/json2/JSONTokener;->index:J

    iput-wide v4, p0, Lorg/json2/JSONTokener;->character:J

    iput-wide v2, p0, Lorg/json2/JSONTokener;->characterPreviousLine:J

    iput-wide v4, p0, Lorg/json2/JSONTokener;->line:J

    return-void

    :cond_1f
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json2/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private decrementIndexes()V
    .registers 7

    const-wide/16 v4, 0x1

    iget-wide v0, p0, Lorg/json2/JSONTokener;->index:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json2/JSONTokener;->index:J

    iget-char v0, p0, Lorg/json2/JSONTokener;->previous:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_11

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1b

    :cond_11
    iget-wide v0, p0, Lorg/json2/JSONTokener;->line:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json2/JSONTokener;->line:J

    iget-wide v0, p0, Lorg/json2/JSONTokener;->characterPreviousLine:J

    :goto_18
    iput-wide v0, p0, Lorg/json2/JSONTokener;->character:J

    :cond_1a
    return-void

    :cond_1b
    iget-wide v0, p0, Lorg/json2/JSONTokener;->character:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1a

    sub-long/2addr v0, v4

    goto :goto_18
.end method

.method public static dehexchar(C)I
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v0, 0x46

    if-gt p0, v0, :cond_16

    add-int/lit8 v0, p0, -0x37

    goto :goto_a

    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_21

    const/16 v0, 0x66

    if-gt p0, v0, :cond_21

    add-int/lit8 v0, p0, -0x57

    goto :goto_a

    :cond_21
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private incrementIndexes(I)V
    .registers 8

    const/16 v3, 0xd

    const-wide/16 v4, 0x1

    if-lez p1, :cond_1a

    iget-wide v0, p0, Lorg/json2/JSONTokener;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json2/JSONTokener;->index:J

    const-wide/16 v0, 0x0

    if-ne p1, v3, :cond_1b

    :goto_f
    iget-wide v2, p0, Lorg/json2/JSONTokener;->line:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/json2/JSONTokener;->line:J

    iget-wide v2, p0, Lorg/json2/JSONTokener;->character:J

    iput-wide v2, p0, Lorg/json2/JSONTokener;->characterPreviousLine:J

    :cond_18
    :goto_18
    iput-wide v0, p0, Lorg/json2/JSONTokener;->character:J

    :cond_1a
    return-void

    :cond_1b
    const/16 v2, 0xa

    if-ne p1, v2, :cond_24

    iget-char v2, p0, Lorg/json2/JSONTokener;->previous:C

    if-eq v2, v3, :cond_18

    goto :goto_f

    :cond_24
    iget-wide v0, p0, Lorg/json2/JSONTokener;->character:J

    add-long/2addr v0, v4

    goto :goto_18
.end method


# virtual methods
.method public back()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_16

    iget-wide v0, p0, Lorg/json2/JSONTokener;->index:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-direct {p0}, Lorg/json2/JSONTokener;->decrementIndexes()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json2/JSONTokener;->eof:Z

    return-void

    :cond_16
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()Z
    .registers 2

    iget-boolean v0, p0, Lorg/json2/JSONTokener;->eof:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected getPrevious()C
    .registers 2

    iget-char v0, p0, Lorg/json2/JSONTokener;->previous:C

    return v0
.end method

.method public more()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/Reader;->mark(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_28

    :try_start_c
    iget-object v1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    if-gtz v1, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json2/JSONTokener;->eof:Z

    const/4 v0, 0x0

    goto :goto_5

    :cond_19
    iget-object v1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_5

    :catch_1f
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    const-string v2, "Unable to read the next character from the stream"

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    const-string v2, "Unable to preserve stream position"

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    if-eqz v1, :cond_f

    iput-boolean v0, p0, Lorg/json2/JSONTokener;->usePrevious:Z

    iget-char v1, p0, Lorg/json2/JSONTokener;->previous:C

    :goto_9
    if-gtz v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/json2/JSONTokener;->eof:Z

    :goto_e
    return v0

    :cond_f
    :try_start_f
    iget-object v1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1d

    move-result v1

    goto :goto_9

    :cond_16
    invoke-direct {p0, v1}, Lorg/json2/JSONTokener;->incrementIndexes(I)V

    int-to-char v0, v1

    iput-char v0, p0, Lorg/json2/JSONTokener;->previous:C

    goto :goto_e

    :catch_1d
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next(C)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    if-eq v0, p1, :cond_46

    if-lez v0, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' and instead saw \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_46
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-array v1, p1, [C

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_20

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v2

    aput-char v2, v1, v0

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->end()Z

    move-result v2

    if-nez v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_a
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    sparse-switch v0, :sswitch_data_52

    if-ne v0, p1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_13
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    sparse-switch v0, :sswitch_data_64

    const-string v0, "Illegal escape."

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_21
    const/4 v0, 0x4

    :try_start_22
    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_30} :catch_31

    goto :goto_5

    :catch_31
    move-exception v0

    const-string v1, "Illegal escape."

    invoke-virtual {p0, v1, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_39
    const/16 v0, 0x9

    :cond_3b
    :goto_3b
    :sswitch_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :sswitch_3f
    const/16 v0, 0xd

    goto :goto_3b

    :sswitch_42
    const/16 v0, 0xa

    goto :goto_3b

    :sswitch_45
    const/16 v0, 0xc

    goto :goto_3b

    :sswitch_48
    const/16 v0, 0x8

    goto :goto_3b

    :sswitch_4b
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_4b
        0xa -> :sswitch_4b
        0xd -> :sswitch_4b
        0x5c -> :sswitch_13
    .end sparse-switch

    :sswitch_data_64
    .sparse-switch
        0x22 -> :sswitch_3b
        0x27 -> :sswitch_3b
        0x2f -> :sswitch_3b
        0x5c -> :sswitch_3b
        0x62 -> :sswitch_48
        0x66 -> :sswitch_45
        0x6e -> :sswitch_42
        0x72 -> :sswitch_3f
        0x74 -> :sswitch_39
        0x75 -> :sswitch_21
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v1

    if-eq v1, p1, :cond_15

    if-eqz v1, :cond_15

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    const/16 v2, 0xd

    if-ne v1, v2, :cond_23

    :cond_15
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_19

    if-eqz v1, :cond_19

    const/16 v2, 0xa

    if-eq v1, v2, :cond_19

    const/16 v2, 0xd

    if-ne v1, v2, :cond_27

    :cond_19
    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    const/16 v2, 0x20

    if-lt v0, v2, :cond_49

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    goto :goto_c

    :sswitch_20
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :try_start_23
    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0, p0}, Lorg/json2/JSONObject;-><init>(Lorg/json2/JSONTokener;)V
    :try_end_28
    .catch Ljava/lang/StackOverflowError; {:try_start_23 .. :try_end_28} :catch_29

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    const-string v2, "JSON Array or Object depth too large to process."

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_32
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :try_start_35
    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Lorg/json2/JSONTokener;)V
    :try_end_3a
    .catch Ljava/lang/StackOverflowError; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_28

    :catch_3b
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    const-string v2, "JSON Array or Object depth too large to process."

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_44
    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_49
    iget-boolean v0, p0, Lorg/json2/JSONTokener;->eof:Z

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-static {v0}, Lorg/json2/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    :cond_65
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json2/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_data_6c
    .sparse-switch
        0x22 -> :sswitch_44
        0x27 -> :sswitch_44
        0x5b -> :sswitch_32
        0x7b -> :sswitch_20
    .end sparse-switch
.end method

.method public skipTo(C)C
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lorg/json2/JSONTokener;->index:J

    iget-wide v4, p0, Lorg/json2/JSONTokener;->character:J

    iget-wide v6, p0, Lorg/json2/JSONTokener;->line:J

    iget-object v0, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V

    :cond_e
    invoke-virtual {p0}, Lorg/json2/JSONTokener;->next()C

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    iput-wide v2, p0, Lorg/json2/JSONTokener;->index:J

    iput-wide v4, p0, Lorg/json2/JSONTokener;->character:J

    iput-wide v6, p0, Lorg/json2/JSONTokener;->line:J

    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    if-ne v0, p1, :cond_e

    iget-object v1, p0, Lorg/json2/JSONTokener;->reader:Ljava/io/Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/Reader;->mark(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2d

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->back()V

    goto :goto_20

    :catch_2d
    move-exception v0

    new-instance v1, Lorg/json2/JSONException;

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json2/JSONException;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/json2/JSONTokener;->index:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/json2/JSONTokener;->character:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/json2/JSONTokener;->line:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
