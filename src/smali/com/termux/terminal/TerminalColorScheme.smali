.class public final Lcom/termux/terminal/TerminalColorScheme;
.super Ljava/lang/Object;
.source "TerminalColorScheme.java"


# static fields
.field private static final DEFAULT_COLORSCHEME:[I


# instance fields
.field public final mDefaultColors:[I


# direct methods
.method private static $d2j$hex$7437ea81$decode_B(Ljava/lang/String;)[B
    .registers 13
    .param p0, "src"  # Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 44
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_6b

    .line 45
    mul-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    .line 46
    .local v3, "h":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v0, v4

    .line 48
    .local v4, "l":C
    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v3, v10, :cond_2d

    if-gt v3, v7, :cond_2d

    .line 49
    add-int/lit8 v11, v3, -0x30

    .local v11, "hh":I
    goto :goto_3e

    .line 50
    .end local v11  # "hh":I
    :cond_2d
    if-lt v3, v9, :cond_36

    if-gt v3, v6, :cond_36

    .line 51
    add-int/lit8 v11, v3, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11  # "hh":I
    goto :goto_3e

    .line 52
    .end local v11  # "hh":I
    :cond_36
    if-lt v3, v8, :cond_65

    if-gt v3, v5, :cond_65

    .line 53
    add-int/lit8 v11, v3, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 58
    .restart local v11  # "hh":I
    :goto_3e
    if-lt v4, v10, :cond_45

    if-gt v4, v7, :cond_45

    .line 59
    add-int/lit8 v5, v4, -0x30

    .local v5, "ll":I
    goto :goto_56

    .line 60
    .end local v5  # "ll":I
    :cond_45
    if-lt v4, v9, :cond_4e

    if-gt v4, v6, :cond_4e

    .line 61
    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    .restart local v5  # "ll":I
    goto :goto_56

    .line 62
    .end local v5  # "ll":I
    :cond_4e
    if-lt v4, v8, :cond_5f

    if-gt v4, v5, :cond_5f

    .line 63
    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    .line 67
    .restart local v5  # "ll":I
    :goto_56
    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 44
    .end local v3  # "h":C
    .end local v4  # "l":C
    .end local v5  # "ll":I
    .end local v11  # "hh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .restart local v3  # "h":C
    .restart local v4  # "l":C
    .restart local v11  # "hh":I
    :cond_5f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 55
    .end local v11  # "hh":I
    :cond_65
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 69
    .end local v2  # "i":I
    .end local v3  # "h":C
    .end local v4  # "l":C
    :cond_6b
    return-object v1
.end method

.method private static $d2j$hex$7437ea81$decode_I(Ljava/lang/String;)[I
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/termux/terminal/TerminalColorScheme;->$d2j$hex$7437ea81$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 26
    .local v2, "s":Ljava/nio/IntBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 27
    .local v3, "data":[I
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v3
.end method

.method private static $d2j$hex$7437ea81$decode_J(Ljava/lang/String;)[J
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/termux/terminal/TerminalColorScheme;->$d2j$hex$7437ea81$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 16
    .local v2, "s":Ljava/nio/LongBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    .line 17
    .local v3, "data":[J
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v3
.end method

.method private static $d2j$hex$7437ea81$decode_S(Ljava/lang/String;)[S
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/termux/terminal/TerminalColorScheme;->$d2j$hex$7437ea81$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 36
    .local v2, "s":Ljava/nio/ShortBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 37
    .local v3, "data":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v3
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "000000ff0000cdff00cd00ff00cdcdffed9564ffcd00cdffcdcd00ffe5e5e5ff7f7f7fff0000ffff00ff00ff00ffffffff5c5cffff00ffffffff00ffffffffff000000ff5f0000ff870000ffaf0000ffd70000ffff0000ff005f00ff5f5f00ff875f00ffaf5f00ffd75f00ffff5f00ff008700ff5f8700ff878700ffaf8700ffd78700ffff8700ff00af00ff5faf00ff87af00ffafaf00ffd7af00ffffaf00ff00d700ff5fd700ff87d700ffafd700ffd7d700ffffd700ff00ff00ff5fff00ff87ff00ffafff00ffd7ff00ffffff00ff00005fff5f005fff87005fffaf005fffd7005fffff005fff005f5fff5f5f5fff875f5fffaf5f5fffd75f5fffff5f5fff00875fff5f875fff87875fffaf875fffd7875fffff875fff00af5fff5faf5fff87af5fffafaf5fffd7af5fffffaf5fff00d75fff5fd75fff87d75fffafd75fffd7d75fffffd75fff00ff5fff5fff5fff87ff5fffafff5fffd7ff5fffffff5fff000087ff5f0087ff870087ffaf0087ffd70087ffff0087ff005f87ff5f5f87ff875f87ffaf5f87ffd75f87ffff5f87ff008787ff5f8787ff878787ffaf8787ffd78787ffff8787ff00af87ff5faf87ff87af87ffafaf87ffd7af87ffffaf87ff00d787ff5fd787ff87d787ffafd787ffd7d787ffffd787ff00ff87ff5fff87ff87ff87ffafff87ffd7ff87ffffff87ff0000afff5f00afff8700afffaf00afffd700afffff00afff005fafff5f5fafff875fafffaf5fafffd75fafffff5fafff0087afff5f87afff8787afffaf87afffd787afffff87afff00afafff5fafafff87afafffafafafffd7afafffffafafff00d7afff5fd7afff87d7afffafd7afffd7d7afffffd7afff00ffafff5fffafff87ffafffafffafffd7ffafffffffafff0000d7ff5f00d7ff8700d7ffaf00d7ffd700d7ffff00d7ff005fd7ff5f5fd7ff875fd7ffaf5fd7ffd75fd7ffff5fd7ff0087d7ff5f87d7ff8787d7ffaf87d7ffd787d7ffff87d7ff00afd7ff5fafd7ff87afd7ffafafd7ffd7afd7ffffafd7ff00d7d7ff5fd7d7ff87d7d7ffafd7d7ffd7d7d7ffffd7d7ff00ffd7ff5fffd7ff87ffd7ffafffd7ffd7ffd7ffffffd7ff0000ffff5f00ffff8700ffffaf00ffffd700ffffff00ffff005fffff5f5fffff875fffffaf5fffffd75fffffff5fffff0087ffff5f87ffff8787ffffaf87ffffd787ffffff87ffff00afffff5fafffff87afffffafafffffd7afffffffafffff00d7ffff5fd7ffff87d7ffffafd7ffffd7d7ffffffd7ffff00ffffff5fffffff87ffffffafffffffd7ffffffffffffff080808ff121212ff1c1c1cff262626ff303030ff3a3a3aff444444ff4e4e4eff585858ff626262ff6c6c6cff767676ff808080ff8a8a8aff949494ff9e9e9effa8a8a8ffb2b2b2ffbcbcbcffc6c6c6ffd0d0d0ffdadadaffe4e4e4ffeeeeeeffffffffff000000ffa9aaa9ff"

    invoke-static {v0}, Lcom/termux/terminal/TerminalColorScheme;->$d2j$hex$7437ea81$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x103

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    .line 65
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    return-void
.end method

.method private reset()V
    .registers 5

    .line 69
    sget-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/16 v2, 0x103

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public updateWith(Ljava/util/Properties;)V
    .registers 7

    .line 73
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    .line 74
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    const-string v2, "foreground"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_30

    const/16 v2, 0x100

    goto :goto_59

    .line 81
    :cond_30
    const-string v2, "background"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v2, 0x101

    goto :goto_59

    .line 83
    :cond_3b
    const-string v2, "cursor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/16 v2, 0x102

    goto :goto_59

    .line 85
    :cond_46
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "Invalid property: \'"

    if-eqz v2, :cond_99

    .line 87
    const/4 v2, 0x5

    :try_start_51
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_59} :catch_83

    .line 95
    :goto_59
    invoke-static {v0}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_64

    .line 99
    iget-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aput v4, v0, v2

    goto :goto_b

    .line 97
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Property \'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has invalid color: \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :catch_83
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    return-void
.end method
