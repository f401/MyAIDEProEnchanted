.class public Lorg/apache/tools/tar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"

# interfaces
.implements Lorg/apache/tools/tar/TarConstants;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# instance fields
.field private devMajor:I

.field private devMinor:I

.field private file:Ljava/io/File;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private realSize:J

.field private size:J

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/16 v2, 0x1f

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    .line 180
    const-string v0, "00"

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 184
    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    iput-wide v4, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 191
    iput-wide v4, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 192
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 271
    invoke-static {p2, v4}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 272
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    .line 274
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const/16 v1, 0x41ed

    iput v1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    .line 278
    const/16 v1, 0x35

    iput-byte v1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 281
    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 286
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 294
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 295
    iput v4, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 296
    iput v4, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 297
    return-void

    .line 284
    :cond_1
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_2
    const v1, 0x81a4

    iput v1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    .line 289
    const/16 v1, 0x30

    iput-byte v1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 291
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .registers 4

    .line 242
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;)V

    .line 243
    iput-byte p2, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 244
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    .line 245
    const-string v0, "ustar  "

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    .line 246
    const-string v0, " \u0000"

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    .line 248
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 216
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 218
    invoke-static {p1, p2}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 221
    iput v4, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 222
    iput v4, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 223
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 224
    if-eqz v1, :cond_0

    const/16 v0, 0x41ed

    :goto_0
    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    .line 225
    if-eqz v1, :cond_1

    const/16 v0, 0x35

    :goto_1
    iput-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 226
    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 227
    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 228
    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 229
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    .line 233
    return-void

    .line 224
    :cond_0
    const v0, 0x81a4

    goto :goto_0

    .line 225
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 307
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([B)V

    .line 309
    return-void
.end method

.method public constructor <init>([BLorg/apache/tools/zip/ZipEncoding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 323
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V

    .line 324
    return-void
.end method

.method private evaluateType([B)I
    .registers 5

    const/16 v2, 0x101

    const/4 v1, 0x6

    .line 1075
    const-string v0, "ustar  "

    invoke-static {v0, p1, v2, v1}, Lorg/apache/tools/tar/TarEntry;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const/4 v0, 0x2

    .line 1081
    :goto_0
    return v0

    .line 1078
    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v2, v1}, Lorg/apache/tools/tar/TarEntry;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    const/4 v0, 0x3

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEqual([BII[BIIZ)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1116
    if-ge p2, p5, :cond_0

    move v0, p2

    :goto_0
    move v3, v1

    .line 1117
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1118
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_1

    move v0, v1

    .line 1141
    :goto_2
    return v0

    :cond_0
    move v0, p5

    .line 1116
    goto :goto_0

    .line 1117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1122
    :cond_2
    if-ne p2, p5, :cond_3

    move v0, v2

    .line 1123
    goto :goto_2

    .line 1125
    :cond_3
    if-eqz p6, :cond_8

    .line 1126
    if-le p2, p5, :cond_6

    .line 1127
    :goto_3
    if-ge p5, p2, :cond_7

    .line 1128
    add-int v0, p1, p5

    aget-byte v0, p0, v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1129
    goto :goto_2

    .line 1127
    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 1133
    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    if-ge p2, p5, :cond_7

    .line 1134
    add-int v0, p4, p2

    aget-byte v0, p3, v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1135
    goto :goto_2

    :cond_7
    move v0, v2

    .line 1139
    goto :goto_2

    :cond_8
    move v0, v1

    .line 1141
    goto :goto_2
.end method

.method private static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .registers 11

    const/4 v1, 0x0

    .line 1095
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1096
    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x3a

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1031
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_2

    .line 1038
    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1041
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1043
    if-ne v1, v4, :cond_2

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 1046
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1057
    :cond_2
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_1
    if-nez p1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1063
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1049
    :cond_3
    const-string v1, "netware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1051
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1052
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1065
    :cond_4
    return-object v0
.end method

.method private parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v5, 0xc

    const/16 v4, 0x20

    const/16 v3, 0x64

    const/16 v2, 0x8

    .line 959
    if-eqz p3, :cond_2

    invoke-static {p1, v0, v3}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    .line 962
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 964
    invoke-static {p1, v3, v2}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    .line 965
    const/16 v0, 0x6c

    .line 966
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 967
    const/16 v0, 0x74

    .line 968
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 969
    const/16 v0, 0x7c

    .line 970
    invoke-static {p1, v0, v5}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 971
    const/16 v0, 0x88

    .line 972
    invoke-static {p1, v0, v5}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 973
    const/16 v0, 0x9c

    .line 975
    const/16 v1, 0x9d

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 976
    if-eqz p3, :cond_3

    invoke-static {p1, v1, v3}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    .line 977
    :goto_1
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 978
    const/16 v0, 0x101

    .line 979
    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    .line 980
    const/16 v0, 0x107

    .line 981
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    .line 982
    const/16 v0, 0x109

    .line 983
    if-eqz p3, :cond_4

    invoke-static {p1, v0, v4}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    .line 984
    :goto_2
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 985
    const/16 v0, 0x129

    .line 986
    if-eqz p3, :cond_5

    invoke-static {p1, v0, v4}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    .line 987
    :goto_3
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    .line 988
    const/16 v0, 0x149

    .line 989
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 990
    const/16 v0, 0x151

    .line 991
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 992
    const/16 v0, 0x159

    .line 994
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarEntry;->evaluateType([B)I

    move-result v1

    .line 995
    packed-switch v1, :pswitch_data_0

    .line 1011
    if-eqz p3, :cond_6

    const/16 v1, 0x9b

    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    .line 1015
    :goto_4
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 1018
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 1023
    :cond_1
    :goto_5
    return-void

    .line 962
    :cond_2
    invoke-static {p1, v0, v3, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 977
    :cond_3
    invoke-static {p1, v1, v3, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 984
    :cond_4
    invoke-static {p1, v0, v4, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 987
    :cond_5
    invoke-static {p1, v0, v4, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 997
    :pswitch_0
    const/16 v0, 0x1e2

    .line 1003
    invoke-static {p1, v0}, Lorg/apache/tools/tar/TarUtils;->parseBoolean([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/tar/TarEntry;->isExtended:Z

    .line 1004
    const/16 v0, 0x1e3

    .line 1005
    invoke-static {p1, v0, v5}, Lorg/apache/tools/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->realSize:J

    goto :goto_5

    .line 1012
    :cond_6
    const/16 v1, 0x9b

    invoke-static {p1, v0, v1, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 995
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private writeEntryHeaderField(J[BIIZ)I
    .registers 14

    const-wide/16 v4, 0x0

    .line 912
    if-nez p6, :cond_1

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1

    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x3

    shl-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 917
    :cond_0
    invoke-static {v4, v5, p3, p4, p5}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v0

    .line 919
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalOrBinaryBytes(J[BII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->equals(Lorg/apache/tools/tar/TarEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/tools/tar/TarEntry;)Z
    .registers 4

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevMajor()I
    .registers 2

    .line 650
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    return v0
.end method

.method public getDevMinor()I
    .registers 2

    .line 673
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    return v0
.end method

.method public getDirectoryEntries()[Lorg/apache/tools/tar/TarEntry;
    .registers 8

    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    :cond_0
    new-array v0, v0, [Lorg/apache/tools/tar/TarEntry;

    .line 833
    :goto_0
    return-object v0

    .line 826
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 827
    array-length v1, v2

    new-array v1, v1, [Lorg/apache/tools/tar/TarEntry;

    .line 829
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 830
    new-instance v3, Lorg/apache/tools/tar/TarEntry;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 833
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 610
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    long-to-int v0, v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 542
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkFlag()B
    .registers 2

    .line 405
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    return v0
.end method

.method public getLinkName()Ljava/lang/String;
    .registers 2

    .line 424
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongGroupId()J
    .registers 3

    .line 505
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    return-wide v0
.end method

.method public getLongUserId()J
    .registers 3

    .line 464
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    return-wide v0
.end method

.method public getModTime()Ljava/util/Date;
    .registers 7

    .line 601
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 619
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()J
    .registers 3

    .line 706
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 628
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    long-to-int v0, v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 524
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlockDevice()Z
    .registers 3

    .line 805
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharacterDevice()Z
    .registers 3

    .line 798
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDescendent(Lorg/apache/tools/tar/TarEntry;)Z
    .registers 4

    .line 368
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 761
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 765
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExtended()Z
    .registers 2

    .line 697
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarEntry;->isExtended:Z

    return v0
.end method

.method public isFIFO()Z
    .registers 3

    .line 812
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .registers 3

    .line 773
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    :goto_0
    return v0

    .line 774
    :cond_0
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    if-eqz v0, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGNULongLinkEntry()Z
    .registers 3

    .line 724
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGNULongNameEntry()Z
    .registers 3

    .line 733
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGNUSparse()Z
    .registers 3

    .line 715
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalPaxHeader()Z
    .registers 3

    .line 752
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLink()Z
    .registers 3

    .line 790
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaxHeader()Z
    .registers 3

    .line 742
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .registers 3

    .line 782
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTarHeader([B)V
    .registers 4

    .line 931
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 934
    :try_start_1
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 935
    :catch_1
    move-exception v0

    .line 937
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V

    .line 954
    return-void
.end method

.method public setDevMajor(I)V
    .registers 4

    .line 660
    if-ltz p1, :cond_0

    .line 664
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 665
    return-void

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Major device number is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDevMinor(I)V
    .registers 4

    .line 683
    if-ltz p1, :cond_0

    .line 687
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 688
    return-void

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minor device number is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setGroupId(I)V
    .registers 4

    .line 495
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    .line 496
    return-void
.end method

.method public setGroupId(J)V
    .registers 4

    .line 515
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 516
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 551
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public setIds(II)V
    .registers 3

    .line 561
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->setUserId(I)V

    .line 562
    invoke-virtual {p0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupId(I)V

    .line 563
    return-void
.end method

.method public setLinkFlag(B)V
    .registers 2

    .line 415
    iput-byte p1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 416
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setModTime(J)V
    .registers 6

    .line 583
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 584
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .registers 6

    .line 592
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 593
    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 395
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    .line 396
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 386
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public setSize(J)V
    .registers 6

    .line 638
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 641
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 642
    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUserId(I)V
    .registers 4

    .line 454
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    .line 455
    return-void
.end method

.method public setUserId(J)V
    .registers 4

    .line 474
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 475
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public writeEntryHeader([B)V
    .registers 4

    .line 845
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 848
    :try_start_1
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 849
    :catch_1
    move-exception v0

    .line 851
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2, p2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v5

    .line 872
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    int-to-long v2, v0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v5

    .line 873
    iget-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    const/16 v6, 0x8

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v5

    .line 875
    iget-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    const/16 v6, 0x8

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v5

    .line 877
    iget-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    const/16 v6, 0xc

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v5

    .line 878
    iget-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    const/16 v6, 0xc

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v8

    .line 881
    const/4 v0, 0x0

    move v1, v8

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 884
    const/16 v2, 0x20

    aput-byte v2, p1, v1

    .line 883
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_0
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    aput-byte v0, p1, v1

    .line 888
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2, p2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v0

    .line 890
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 891
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 892
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v0

    .line 894
    iget-object v1, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v5

    .line 896
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    int-to-long v2, v0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v5

    .line 898
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    int-to-long v2, v0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 901
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 902
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v0

    .line 907
    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v8, v2}, Lorg/apache/tools/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    .line 908
    return-void
.end method
