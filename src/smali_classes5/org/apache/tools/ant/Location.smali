.class public Lorg/apache/tools/ant/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final columnNumber:I

.field private final fileName:Ljava/lang/String;

.field private final lineNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lorg/apache/tools/ant/Location;

    invoke-direct {v0}, Lorg/apache/tools/ant/Location;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 46
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Location;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_1a

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    sget-object v0, Lorg/apache/tools/ant/Location;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    .line 97
    :goto_15
    iput p2, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    .line 98
    iput p3, p0, Lorg/apache/tools/ant/Location;->columnNumber:I

    .line 99
    return-void

    .line 95
    :cond_1a
    iput-object p1, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    goto :goto_15
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .registers 5

    .line 76
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 162
    if-eq p0, p1, :cond_1c

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 162
    :goto_1d
    return v0

    .line 163
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getColumnNumber()I
    .registers 2

    .line 122
    iget v0, p0, Lorg/apache/tools/ant/Location;->columnNumber:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .line 114
    iget v0, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v1, p0, Lorg/apache/tools/ant/Location;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v1, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    if-eqz v1, :cond_1a

    .line 143
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lorg/apache/tools/ant/Location;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    :cond_1a
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
