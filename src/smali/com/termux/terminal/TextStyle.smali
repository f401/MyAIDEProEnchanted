.class public final Lcom/termux/terminal/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# static fields
.field public static final CHARACTER_ATTRIBUTE_BLINK:I = 0x8

.field public static final CHARACTER_ATTRIBUTE_BOLD:I = 0x1

.field public static final CHARACTER_ATTRIBUTE_DIM:I = 0x100

.field public static final CHARACTER_ATTRIBUTE_INVERSE:I = 0x10

.field public static final CHARACTER_ATTRIBUTE_INVISIBLE:I = 0x20

.field public static final CHARACTER_ATTRIBUTE_ITALIC:I = 0x2

.field public static final CHARACTER_ATTRIBUTE_PROTECTED:I = 0x80

.field public static final CHARACTER_ATTRIBUTE_STRIKETHROUGH:I = 0x40

.field private static final CHARACTER_ATTRIBUTE_TRUECOLOR_BACKGROUND:I = 0x400

.field private static final CHARACTER_ATTRIBUTE_TRUECOLOR_FOREGROUND:I = 0x200

.field public static final CHARACTER_ATTRIBUTE_UNDERLINE:I = 0x4

.field public static final COLOR_INDEX_BACKGROUND:I = 0x101

.field public static final COLOR_INDEX_CURSOR:I = 0x102

.field public static final COLOR_INDEX_FOREGROUND:I = 0x100

.field static final NORMAL:J

.field public static final NUM_INDEXED_COLORS:I = 0x103


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const/16 v0, 0x100

    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    sput-wide v0, Lcom/termux/terminal/TextStyle;->NORMAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBackColor(J)I
    .locals 6

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v2, -0x1000000

    const-wide/32 v4, 0xffffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method public static decodeEffect(J)I
    .locals 2

    const-wide/16 v0, 0x7ff

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static decodeForeColor(J)I
    .locals 6

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v2, -0x1000000

    const-wide/32 v4, 0xffffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method static encode(III)J
    .locals 12

    const-wide/32 v10, 0xffffff

    const-wide/16 v8, 0x1ff

    const/16 v3, 0x28

    const/16 v7, 0x10

    const/high16 v6, -0x1000000

    and-int/lit16 v0, p2, 0x1ff

    int-to-long v4, v0

    int-to-long v0, p0

    and-int v2, p0, v6

    if-ne v2, v6, :cond_0

    and-long/2addr v0, v10

    shl-long/2addr v0, v3

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    move-wide v2, v0

    :goto_0
    and-int v0, p1, v6

    if-ne v0, v6, :cond_1

    int-to-long v0, p1

    and-long/2addr v0, v10

    shl-long/2addr v0, v7

    const-wide/16 v6, 0x400

    or-long/2addr v0, v6

    :goto_1
    or-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    and-long/2addr v0, v8

    shl-long/2addr v0, v3

    move-wide v2, v0

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    and-long/2addr v0, v8

    shl-long/2addr v0, v7

    goto :goto_1
.end method
