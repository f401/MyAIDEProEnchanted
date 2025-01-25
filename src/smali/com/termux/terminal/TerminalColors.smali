.class public final Lcom/termux/terminal/TerminalColors;
.super Ljava/lang/Object;
.source "TerminalColors.java"


# static fields
.field public static final COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;


# instance fields
.field public final mCurrentColors:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/termux/terminal/TerminalColorScheme;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColorScheme;-><init>()V

    sput-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

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
    .registers 9

    .line 38
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    goto :goto_17

    .line 42
    :cond_c
    const-string v1, "rgb:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v1, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 49
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1b} :catch_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1b} :catch_79

    sub-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    .line 50
    rem-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_24

    return v0

    .line 51
    :cond_24
    :try_start_24
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v4, v2, 0x4

    int-to-double v4, v4

    .line 52
    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L  # 255.0

    div-double/2addr v6, v4

    .line 55
    add-int v4, v3, v2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 57
    add-int v5, v3, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v1

    .line 59
    add-int/2addr v2, v3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 61
    const/16 v1, 0x10

    invoke-static {v4, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_52} :catch_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_52} :catch_79

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    double-to-int v2, v2

    .line 62
    :try_start_59
    invoke-static {v5, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5d} :catch_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_59 .. :try_end_5d} :catch_79

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    double-to-int v3, v3

    .line 63
    :try_start_64
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_68} :catch_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_68} :catch_79

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int p0, v4

    const/high16 v0, -0x1000000

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    :catch_79
    move-exception p0

    goto :goto_7c

    :catch_7b
    move-exception p0

    :cond_7c
    :goto_7c
    return v0
.end method


# virtual methods
.method public reset()V
    .registers 5

    .line 27
    sget-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v2, 0x103

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset(I)V
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    iget-object v1, v1, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aget v1, v1, p1

    aput v1, v0, p1

    return-void
.end method

.method public tryParseColor(ILjava/lang/String;)V
    .registers 4

    .line 72
    invoke-static {p2}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_a

    .line 73
    iget-object v0, p0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aput p2, v0, p1

    :cond_a
    return-void
.end method
