.class public Lcom/FR1ENDS/tools/asm/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static StringInt:Z

.field private static final obfuscationChars:[Ljava/lang/String;

.field private static random:Ljava/util/Random;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ooO"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "OOo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ooo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OOO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "oOo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OoO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->obfuscationChars:[Ljava/lang/String;

    sput-boolean v3, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->StringInt:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static String(I)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x2328

    const/4 v1, 0x0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 42
    :goto_0
    if-ge p0, v0, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    sget-boolean v3, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->StringInt:Z

    if-eqz v3, :cond_1

    .line 44
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [C

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x4e20

    int-to-char v5, v5

    aput-char v5, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static colonial()Ljava/lang/String;
    .registers 1

    .line 54
    const-string v0, "FR1ENDS_"

    return-object v0
.end method

.method public static colonial2()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object v0, Lcom/FR1ENDS/tools/asm/utils/Glitch;->signatureGlitch:Ljava/lang/String;

    return-object v0
.end method

.method public static getMassiveString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x7fff

    if-lt v0, v2, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRandomLowGlitch(I)Ljava/lang/String;
    .registers 6

    .line 22
    sget-object v0, Lcom/FR1ENDS/tools/asm/utils/Glitch;->lowerGlitch:[Ljava/lang/String;

    array-length v1, v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    sget-object v3, Lcom/FR1ENDS/tools/asm/utils/Glitch;->lowerGlitch:[Ljava/lang/String;

    sget-object v4, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->random:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRandomObfString(I)Ljava/lang/String;
    .registers 6

    .line 13
    sget-object v0, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->obfuscationChars:[Ljava/lang/String;

    array-length v1, v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    sget-object v3, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->obfuscationChars:[Ljava/lang/String;

    sget-object v4, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->random:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRandomUpGlitch(I)Ljava/lang/String;
    .registers 6

    .line 31
    sget-object v0, Lcom/FR1ENDS/tools/asm/utils/Glitch;->upperGlitch:[Ljava/lang/String;

    array-length v1, v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    sget-object v3, Lcom/FR1ENDS/tools/asm/utils/Glitch;->upperGlitch:[Ljava/lang/String;

    sget-object v4, Lcom/FR1ENDS/tools/asm/utils/StringUtils;->random:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isInitializer(Lorg/objectweb/asm/tree/MethodNode;)Z
    .registers 3

    .line 67
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
