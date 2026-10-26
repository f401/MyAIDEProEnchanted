.class public final Lcom/termux/terminal/TerminalColors;
.super Ljava/lang/Object;
.source "TerminalColors.java"


# static fields
.field public static final COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;


# instance fields
.field public final mCurrentColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/termux/terminal/TerminalColorScheme;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColorScheme;-><init>()V

    sput-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x103

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 17
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalColors;->reset()V

    return-void
.end method

.method static parse(Ljava/lang/String;)I
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_1

    move v1, v0

    move v3, v2

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    .line 50
    rem-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_2

    .line 63
    :cond_0
    :goto_1
    return v0

    .line 42
    :cond_1
    :try_start_1
    const-string v1, "rgb:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    move v1, v2

    goto :goto_0

    .line 51
    :cond_2
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v4, v2, 0x4

    int-to-double v4, v4

    .line 52
    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    div-double v4, v6, v4

    .line 55
    add-int v6, v3, v2

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 57
    add-int v7, v3, v2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v1, v3

    .line 59
    add-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    const/16 v2, 0x10

    invoke-static {v6, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 62
    const/16 v3, 0x10

    :try_start_2
    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v4

    double-to-int v3, v6

    .line 63
    const/16 v6, 0x10

    :try_start_3
    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v4

    double-to-int v0, v0

    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public reset()V
    .locals 4

    const/4 v3, 0x0

    .line 27
    sget-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v2, 0x103

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset(I)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v1, v1, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aget v1, v1, p1

    aput v1, v0, p1

    return-void
.end method

.method public tryParseColor(ILjava/lang/String;)V
    .locals 2

    .line 72
    invoke-static {p2}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aput v0, v1, p1

    :cond_0
    return-void
.end method
