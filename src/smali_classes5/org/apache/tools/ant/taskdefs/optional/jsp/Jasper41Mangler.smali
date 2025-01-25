.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/Jasper41Mangler;
.super Ljava/lang/Object;
.source "Jasper41Mangler.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mangleChar(C)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x5

    .line 66
    new-array v4, v6, [C

    .line 67
    const/16 v0, 0x5f

    aput-char v0, v4, v1

    .line 68
    const/4 v0, 0x1

    :goto_13
    if-gt v0, v3, :cond_1c

    .line 69
    const/16 v5, 0x30

    aput-char v5, v4, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 71
    :cond_1c
    add-int/lit8 v0, v3, 0x1

    :goto_1e
    if-ge v0, v6, :cond_2b

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v4, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 74
    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public mapJspToJavaName(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x5f

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2b

    .line 45
    :cond_28
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v3, :cond_55

    aget-char v4, v1, v0

    .line 48
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 50
    :cond_45
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4d

    .line 51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 53
    :cond_4d
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/jsp/Jasper41Mangler;->mangleChar(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 56
    :cond_55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
