.class public Lcom/google/googlejavaformat/FormatterDiagnostic;
.super Ljava/lang/Object;
.source "FormatterDiagnostic.java"


# instance fields
.field private final column:I

.field private final lineNumber:I

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    .line 39
    iput p2, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->column:I

    .line 40
    iput-object p3, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static create(IILjava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ltz p0, :cond_16

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 32
    if-ltz p1, :cond_18

    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 33
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/googlejavaformat/FormatterDiagnostic;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlejavaformat/FormatterDiagnostic;-><init>(IILjava/lang/String;)V

    return-object v0

    :cond_16
    move v0, v2

    .line 31
    goto :goto_5

    :cond_18
    move v1, v2

    .line 32
    goto :goto_a
.end method

.method public static create(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;
    .registers 3

    const/4 v1, -0x1

    .line 27
    new-instance v0, Lcom/google/googlejavaformat/FormatterDiagnostic;

    invoke-direct {v0, v1, v1, p0}, Lcom/google/googlejavaformat/FormatterDiagnostic;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public column()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->column:I

    return v0
.end method

.method public line()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x3a

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    iget v1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    if-ltz v1, :cond_11

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_11
    iget v1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->column:I

    if-ltz v1, :cond_1d

    .line 71
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_1d
    iget v1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    if-gez v1, :cond_25

    iget v1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->column:I

    if-ltz v1, :cond_2a

    .line 74
    :cond_25
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_2a
    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
