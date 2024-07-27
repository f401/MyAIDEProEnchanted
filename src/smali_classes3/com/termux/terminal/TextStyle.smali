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
.method static final constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    sput-wide v0, Lcom/termux/terminal/TextStyle;->NORMAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBackColor(J)I
    .registers 8

    const/16 v4, 0x10

    .line 79
    const/16 v0, 0x400

    int-to-long v0, v0

    and-long/2addr v0, p0

    const/4 v2, 0x0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    ushr-long v0, p0, v4

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    ushr-long v2, p0, v4

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    long-to-int v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static decodeEffect(J)I
    .registers 4

    .line 87
    const/16 v0, 0x7ff

    int-to-long v0, v0

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static decodeForeColor(J)I
    .registers 8

    const/16 v4, 0x28

    .line 70
    const/16 v0, 0x200

    int-to-long v0, v0

    and-long/2addr v0, p0

    const/4 v2, 0x0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    ushr-long v0, p0, v4

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    ushr-long v2, p0, v4

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    long-to-int v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method static encode(III)J
    .registers 11

    .line 50
    and-int/lit16 v0, p2, 0x1ff

    int-to-long v0, v0

    .line 51
    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_0

    .line 53
    const/16 v2, 0x200

    int-to-long v2, v2

    int-to-long v4, p0

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x28

    long-to-int v6, v6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 58
    :goto_0
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_1

    .line 60
    const/16 v2, 0x400

    int-to-long v2, v2

    int-to-long v4, p1

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x10

    long-to-int v6, v6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 66
    :goto_1
    return-wide v0

    .line 56
    :cond_0
    int-to-long v2, p0

    const-wide/16 v4, 0x1ff

    and-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0

    .line 63
    :cond_1
    int-to-long v2, p1

    const-wide/16 v4, 0x1ff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x10

    long-to-int v4, v4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1
.end method
