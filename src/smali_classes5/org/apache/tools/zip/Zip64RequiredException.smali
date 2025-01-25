.class public Lorg/apache/tools/zip/Zip64RequiredException;
.super Ljava/util/zip/ZipException;
.source "Zip64RequiredException.java"


# static fields
.field static final ARCHIVE_TOO_BIG_MESSAGE:Ljava/lang/String; = "archive\'s size exceeds the limit of 4GByte."

.field static final TOO_MANY_ENTRIES_MESSAGE:Ljava/lang/String; = "archive contains more than 65535 entries."

.field private static final serialVersionUID:J = 0x132ddd9L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static getEntryTooBigMessage(Lorg/apache/tools/zip/ZipEntry;)Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'s size exceeds the limit of 4GByte."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
