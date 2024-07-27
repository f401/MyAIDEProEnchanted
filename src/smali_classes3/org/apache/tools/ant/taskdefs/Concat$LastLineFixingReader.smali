.class final Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;
.super Ljava/io/Reader;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LastLineFixingReader"
.end annotation


# instance fields
.field private final lastChars:[C

.field private lastPos:I

.field private needAddSeparator:Z

.field private final reader:Ljava/io/Reader;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)V
    .registers 5

    const/4 v1, 0x0

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 220
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    .line 221
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    .line 222
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 225
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;Lorg/apache/tools/ant/taskdefs/Concat$1;)V
    .registers 4

    .line 218
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)V

    return-void
.end method

.method private addLastChar(C)V
    .registers 6

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 331
    return-void
.end method

.method private isMissingEndOfLine()Z
    .registers 5

    const/4 v1, 0x0

    .line 338
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 339
    aget-char v2, v2, v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 340
    const/4 v1, 0x1

    .line 343
    :cond_0
    return v1

    .line 338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 322
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 237
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    if-eqz v1, :cond_2

    .line 238
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 245
    if-ne v1, v0, :cond_3

    .line 246
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->isMissingEndOfLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 248
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    .line 249
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 252
    :cond_3
    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->addLastChar(C)V

    move v0, v1

    .line 253
    goto :goto_0
.end method

.method public read([CII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 270
    move v0, v1

    .line 272
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    if-eqz v2, :cond_4

    .line 273
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 310
    :cond_1
    if-nez v0, :cond_2

    move v0, v4

    .line 313
    :cond_2
    :goto_1
    return v0

    .line 276
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p1, p2

    .line 277
    add-int/lit8 p3, p3, -0x1

    .line 278
    add-int/lit8 p2, p2, 0x1

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 280
    if-nez p3, :cond_0

    goto :goto_1

    .line 285
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 286
    if-eq v3, v4, :cond_5

    if-nez v3, :cond_6

    .line 287
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->isMissingEndOfLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 289
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    goto :goto_0

    :cond_6
    move v2, v3

    .line 295
    :goto_2
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v5, v5

    sub-int v5, v3, v5

    if-le v2, v5, :cond_7

    .line 297
    if-gtz v2, :cond_8

    .line 302
    :cond_7
    sub-int/2addr p3, v3

    .line 303
    add-int/2addr p2, v3

    .line 304
    add-int/2addr v0, v3

    .line 305
    if-nez p3, :cond_0

    goto :goto_1

    .line 300
    :cond_8
    add-int v5, p2, v2

    add-int/lit8 v5, v5, -0x1

    aget-char v5, p1, v5

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->addLastChar(C)V

    .line 296
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method
