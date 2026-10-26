.class Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArgumentsParser"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/String;

.field private current:Ljava/lang/String;

.field private index:I

.field private lastValue:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->arguments:[Ljava/lang/String;

    .line 1399
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    return-void
.end method

.method private getNextValue()Z
    .locals 3

    .line 1432
    iget v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->arguments:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 1436
    :goto_0
    return v0

    .line 1435
    :cond_0
    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    .line 1436
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurrent()Ljava/lang/String;
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    return-object v0
.end method

.method public getLastValue()Ljava/lang/String;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->lastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Z
    .locals 4

    const/4 v0, 0x0

    .line 1415
    iget v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->arguments:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return v0

    .line 1418
    :cond_1
    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    .line 1419
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    iget v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRemaining()[Ljava/lang/String;
    .locals 5

    .line 1444
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->arguments:[Ljava/lang/String;

    array-length v1, v0

    iget v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->index:I

    sub-int/2addr v1, v2

    .line 1445
    new-array v3, v1, [Ljava/lang/String;

    if-lez v1, :cond_0

    .line 1447
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v3
.end method

.method public isArg(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 1460
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_3

    .line 1462
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->lastValue:Ljava/lang/String;

    .line 1482
    :goto_0
    return v0

    .line 1468
    :cond_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1469
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1470
    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNextValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1471
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->lastValue:Ljava/lang/String;

    goto :goto_0

    .line 1474
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing value after parameter "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Lcom/s1243808733/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/UsageException;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->current:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
