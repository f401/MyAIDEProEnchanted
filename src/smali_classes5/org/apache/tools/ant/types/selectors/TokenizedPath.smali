.class public Lorg/apache/tools/ant/types/selectors/TokenizedPath;
.super Ljava/lang/Object;
.source "TokenizedPath.java"


# static fields
.field private static final CS_SCAN_ONLY:[Z

.field private static final CS_THEN_NON_CS:[Z

.field public static final EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private final path:Ljava/lang/String;

.field private final tokenizedPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    const-string v1, ""

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    .line 42
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 44
    new-array v0, v4, [Z

    aput-boolean v4, v0, v3

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_SCAN_ONLY:[Z

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_22

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_THEN_NON_CS:[Z

    return-void

    :array_22
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 57
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_49

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 73
    :goto_34
    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    .line 74
    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v1, v1

    aput-object p2, v0, v1

    .line 77
    return-void

    .line 71
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    goto :goto_34
.end method

.method private static findFile(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;
    .registers 16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 183
    array-length v10, p1

    move v9, v7

    move-object v1, p0

    :goto_6
    if-ge v9, v10, :cond_68

    aget-object v11, p1, v9

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_11

    .line 208
    :cond_10
    :goto_10
    return-object v5

    .line 187
    :cond_11
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 188
    if-eqz v12, :cond_58

    .line 193
    if-eqz p2, :cond_41

    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_SCAN_ONLY:[Z

    :goto_1b
    move v2, v7

    move v8, v7

    .line 194
    :goto_1d
    if-nez v2, :cond_52

    array-length v3, v0

    if-ge v8, v3, :cond_52

    move v6, v7

    .line 195
    :goto_23
    if-nez v2, :cond_4e

    array-length v3, v12

    if-ge v6, v3, :cond_4e

    .line 196
    aget-boolean v3, v0, v8

    if-eqz v3, :cond_44

    aget-object v3, v12, v6

    .line 197
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 199
    :cond_34
    new-instance v2, Ljava/io/File;

    aget-object v3, v12, v6

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    move v3, v4

    .line 195
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    move v2, v3

    goto :goto_23

    .line 193
    :cond_41
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_THEN_NON_CS:[Z

    goto :goto_1b

    .line 197
    :cond_44
    aget-object v3, v12, v6

    .line 198
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_4c
    move v3, v2

    goto :goto_3d

    .line 194
    :cond_4e
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_1d

    .line 204
    :cond_52
    if-eqz v2, :cond_10

    .line 183
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_6

    .line 189
    :cond_58
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "IO error scanning directory %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 208
    :cond_68
    array-length v0, p1

    if-nez v0, :cond_74

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_74

    move-object v0, v5

    :goto_72
    move-object v5, v0

    goto :goto_10

    :cond_74
    move-object v0, v1

    goto :goto_72
.end method


# virtual methods
.method public depth()I
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 163
    instance-of v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 163
    :goto_11
    return v0

    .line 164
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public findFile(Ljava/io/File;Z)Ljava/io/File;
    .registers 5

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 117
    if-nez p1, :cond_28

    .line 118
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance p1, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_23
    :goto_23
    invoke-static {p1, v0, p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    :goto_27
    return-object v0

    .line 122
    :cond_28
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 123
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 127
    const/4 v0, 0x0

    goto :goto_27

    .line 129
    :cond_40
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method getTokens()[Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSymlink(Ljava/io/File;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_35

    aget-object v7, v5, v3

    .line 144
    if-nez p1, :cond_1a

    .line 145
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 149
    :goto_12
    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    .line 154
    :goto_19
    return v0

    .line 147
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    aput-object v7, v4, v2

    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_12

    .line 152
    :cond_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object p1, v4

    goto :goto_6

    :cond_35
    move v0, v2

    .line 154
    goto :goto_19
.end method

.method public toPattern()Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .registers 4

    .line 218
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    return-object v0
.end method
