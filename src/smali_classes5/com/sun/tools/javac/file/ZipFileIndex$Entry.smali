.class Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
.super Ljava/lang/Object;
.source "ZipFileIndex.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/ZipFileIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;


# instance fields
.field compressedSize:I

.field dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

.field isDir:Z

.field javatime:J

.field name:Ljava/lang/String;

.field private nativetime:I

.field offset:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1063
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    sput-object v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->EMPTY_ARRAY:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V
    .registers 3

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 1085
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    .line 1086
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/file/RelativePath;)V
    .registers 4

    .line 1080
    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->basename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method private static dosToJavaTime(I)J
    .registers 4

    .line 1106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1107
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x19

    and-int/lit8 v2, v2, 0x7f

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1108
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x15

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1109
    const/4 v1, 0x5

    shr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1110
    const/16 v1, 0xb

    shr-int/lit8 v2, p0, 0xb

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1111
    const/16 v1, 0xc

    shr-int/lit8 v2, p0, 0x5

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1112
    const/16 v1, 0xd

    shl-int/lit8 v2, p0, 0x1

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1113
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1114
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)I
    .registers 4

    .line 1126
    iget-object v0, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 1127
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    if-eq v1, v0, :cond_d

    .line 1128
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->compareTo(Lcom/sun/tools/javac/file/RelativePath;)I

    move-result v0

    .line 1129
    if-eqz v0, :cond_d

    .line 1132
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1062
    check-cast p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compareTo(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1137
    instance-of v1, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    if-nez v1, :cond_6

    .line 1140
    :cond_5
    :goto_5
    return v0

    .line 1139
    :cond_6
    check-cast p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 1140
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 1093
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .registers 5

    .line 1097
    iget-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->javatime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1098
    iget v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->nativetime:I

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dosToJavaTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->javatime:J

    .line 1100
    :cond_10
    iget-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->javatime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1089
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    .line 1145
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->hashCode()I

    move-result v0

    .line 1147
    :goto_9
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1148
    :cond_11
    add-int/lit16 v0, v0, 0x2a7

    mul-int/lit8 v0, v0, 0x61

    add-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v1

    .line 1145
    goto :goto_9
.end method

.method public isDirectory()Z
    .registers 2

    .line 1122
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    return v0
.end method

.method setNativeTime(I)V
    .registers 2

    .line 1118
    iput p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->nativetime:I

    .line 1119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1153
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    .line 1154
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->dir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method
